/*
 * The MIT License (MIT)
 *
 * Copyright (C) 2018, Daniel Dahan and CosmicMind, Inc. <http://cosmicmind.com>.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit

internal class MotionViewTransitionAnimator: MotionCoreAnimator<MotionCoreAnimationViewContext> {
  /**
   Returns MotionTargetState for the given view.
   - Parameter for view: A UIView.
   - Returns: A MotionTargetState.
   */
  override func targetState(for view: UIView) -> MotionTargetState? {
    guard let modifiers = view.motionModifiers else {
      return nil
    }
    
    return MotionTargetState(modifiers: modifiers)
  }
  
  /**
   Returns snapshot view for the given view.
   - Parameter for view: A UIView.
   - Returns: A snapshot UIView.
   */
  override func snapshotView(for view: UIView) -> UIView {
    return view
  }
}
