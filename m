Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 099FCC36000
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 15:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/btEXX0bCEjDwYViOKHdHbmwXR0MtM2mgk3s7HqttY=; b=F0dEFxJ2hSBePC
	oUQrBqXSR0IRK2HF1HoKy4HAKeC1OcaCGGmZombvKgGN4hbWJjRilAOp7SsIa2OkEVIk/wHG3CZMN
	TEzpP0dHullWbQ/tOUfBwmYcWy19qqEYr2umlciRmLzdedju8lR7zO/gB7giztRAPZQeAJmX63EWk
	YwFgXyRuxtC7Eqp2+kbAMeFq29t0AcMgfJDK0PjawTB7netOWGksQgdnQjyZmMK7Bojz4H2dI8peH
	BTw1lKyCLoxsvrWVuuNed3A0G9rBqesN3HAjkFasjbuMWBwiLtZN9XY5rZCVNLR3HDco1cz7tnuqK
	0zhaTgDTG2h48BqzUPzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuuzU-00000009JbU-2fmA;
	Wed, 19 Mar 2025 15:05:56 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuuzS-00000009Jac-3dDA
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 15:05:56 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-39129fc51f8so6216905f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 19 Mar 2025 08:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742396753; x=1743001553; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HOyGSoTfNZpOOzMSJjC6LVqzO57/1qzFZh1n8PH/Tyo=;
        b=HpILflwCmoa2GeaSARxGfE+PsSK9a4wlfXoq4uAQBmm16GYL+m+OkSrFTA6u+O0GWi
         bPfMQQvK6t+7cZuOORfBWJBM7P5Cn20MBZ3rqHH0CooUw5UsxTYtT2d1PI7/l5tAWxA3
         OTKlCKsX/YOkld7qmRNMfI1znkLj+0GmaJOkXZ8oWAu1OhxIrjOjh7ASKkKdprTZ4gcH
         Q0ugXHFUd1ewOILVOCXujCuemKhP6DG/1OonNi4RnQXnouj+mYgZE6cbDBU3A8V9BIO+
         Y6Ix5pIB39XsiED8ztxEWA1ItsGPuZ/6L7lT+P3hhEBVX/iKbHgk7Gw930U9rfN5D8P2
         0Cug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742396753; x=1743001553;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HOyGSoTfNZpOOzMSJjC6LVqzO57/1qzFZh1n8PH/Tyo=;
        b=jKhWjtqFS+P5C5UbiPf6qpKGKlUX6gDcVzxNug211fh2SzqMV8kY1h4rZW7UqKOYUg
         BDq+khOD0dRMcNGh1c9vVjazncZDTWrfHTglM3wNxl70qO6UQVba3iZFfwMbYve/5Frk
         RD/+uajEMhvUg5Z136emSGRf+LkF8gmMEAfN7v41clztDHU/fDt4bkM+JSAgZ7HlfkuE
         eyCuE1PP59x+T51Jv9EZ10gREVDlWARS75DfYbpyXz1Zu10R+H6DhLYVBJgxZsKhHhsz
         cliiXt8kNjULgPg2qJOhlgu38yeQglNxlmkNYyJLnu7aUQKNi5L7lykAXQ+rr62zOD0W
         WJZA==
X-Forwarded-Encrypted: i=1; AJvYcCV9nEevo7uOi0RcP/VdTtaZRtM9qNgTSe5z3/XIZVNJhvzAkqtQ1/IonU7Zs+DeaDwqElNo0F/Ekts=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3GoeXfBtXwABDRVO5D/yZmDF0SkN9YznEM1T6MsFZcbD/SoHp
	Qxl+CGbULJEtlPHyJLOOs1U4rIJ2pa75xkBbeKISOv6Nk3N2d0uuJiv4e/k02O5MTuXuryewa+s
	TKfXK9tgzbfxxn+2zz6NgaxfijA==
X-Gm-Gg: ASbGnct5C/3TQufkhC/dToqPqcKQyYD/Y4ZGe7GPYoB8DEw0OwPaPex7OYtXeba/Oyr
	G8NuePgtiXtcex4fs1dFmrcWGAfW1YMJU3DEJGNtXcFNqkl0RjNSelUJhO2FnUxqG1VCsMnllF7
	zbY2KaJ3IqoKAfkz8cvl7GFJl1
X-Google-Smtp-Source: AGHT+IGC/R96rPwTERLJePIydO6jKIySRg2zYE+ph5TmCcY3KwvMWmVEkhFCZCeurqMtuMEnbnzNGRWgGuqjV8M2Z0E=
X-Received: by 2002:a05:6000:1a8d:b0:390:f358:85db with SMTP id
 ffacd0b85a97d-399739cb803mr2722684f8f.30.1742396751967; Wed, 19 Mar 2025
 08:05:51 -0700 (PDT)
MIME-Version: 1.0
References: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com> <20250318-xps13-fingerprint-v1-2-fbb02d5a34a7@oss.qualcomm.com>
In-Reply-To: <20250318-xps13-fingerprint-v1-2-fbb02d5a34a7@oss.qualcomm.com>
From: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Date: Wed, 19 Mar 2025 16:05:41 +0100
X-Gm-Features: AQ5f1JpkAuHBa-ujJG783-R3MMWDYz5CK-ClmB7izDMWS65sqz5YqQlN7PR71j8
Message-ID: <CAMcHhXoE+UvoKmy1ULJoAq1nrr+PO6qie3vxLuqQbUpiE=SMBQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-dell-xps13-9345: Enable
 fingerprint sensor
To: bjorn.andersson@oss.qualcomm.com
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_080554_902303_D96BF57A 
X-CRM114-Status: GOOD (  19.75  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Wed, 19 Mar 2025 at 04:22, Bjorn Andersson via B4 Relay
<devnull+bjorn.andersson.oss.qualcomm.com@kernel.org> wrote:
>
> From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
>
> The fingerprint sensor, hidden in the power button, is connected to one
> of the USB multiport ports; while the other port is unused.
>
> Describe the USB controller, the four phys and the repeater involved to
> make the fingerprint sensor operational.
>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---

Thanks for getting to the bottom of this, it was certainly a long
awaited feature :)

>  .../boot/dts/qcom/x1e80100-dell-xps13-9345.dts     | 59 +++++++++++++++++++++-
>  1 file changed, 57 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> index 967f6dba0878b51a985fd7c9570b8c4e71afe57d..a35557c562d771e2ce209fca05b82c1943d70f63 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
> @@ -744,8 +744,21 @@ touchscreen@10 {
>
>  &i2c9 {
>         clock-frequency = <400000>;
> -       status = "disabled";
> -       /* USB3 retimer device @0x4f */
> +       status = "okay";
> +
> +       eusb6_repeater: redriver@4f {
> +               compatible = "nxp,ptn3222";
> +               reg = <0x4f>;
> +               #phy-cells = <0>;
> +
> +               vdd3v3-supply = <&vreg_l13b_3p0>;
> +               vdd1v8-supply = <&vreg_l4b_1p8>;
> +
> +               reset-gpios = <&tlmm 184 GPIO_ACTIVE_LOW>;
> +
> +               pinctrl-0 = <&eusb6_reset_n>;
> +               pinctrl-names = "default";
> +       };
>  };
>
>  &i2c17 {
> @@ -967,6 +980,14 @@ edp_reg_en: edp-reg-en-state {
>                 bias-disable;
>         };
>
> +       eusb6_reset_n: eusb6-reset-n-state {
> +               pins = "gpio184";
> +               function = "gpio";
> +               drive-strength = <2>;
> +               bias-disable;
> +               output-low;
> +       };
> +
>         hall_int_n_default: hall-int-n-state {
>                 pins = "gpio92";
>                 function = "gpio";
> @@ -1172,3 +1193,37 @@ &usb_1_ss1_dwc3_hs {
>  &usb_1_ss1_qmpphy_out {
>         remote-endpoint = <&retimer_ss1_ss_in>;
>  };
> +
> +&usb_mp {
> +       status = "okay";
> +};
> +
> +&usb_mp_hsphy0 {
> +       vdd-supply = <&vreg_l2e_0p8>;
> +       vdda12-supply = <&vreg_l3e_1p2>;
> +
> +       phys = <&eusb6_repeater>;

I was under the impression that the fingerprint reader is on the 2nd
port of the root hub, as:
* In ACPI, the only USB device of MP is listed under PRT1, PRT0 is empty
* On Windows the device is listed as PORT2...HUB1...
* `lsusb -t` for the device gives `Port 002: Dev 002,...12M`

Do `usb_mp_hsphy0` and `usb_mp_hsphy1` translate to port 1 and 2
respectively? Because if yes, repeater may belong to `usb_mp_hsphy1`
instead?

Current series works. Moving `phys = <&eusb6_repeater>;` to
`usb_mp_hsphy1` also works, I'm assuming because we are not actually
disabling unused phys.

Tested-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>


> +
> +       status = "okay";
> +};
> +
> +&usb_mp_hsphy1 {
> +       vdd-supply = <&vreg_l2e_0p8>;
> +       vdda12-supply = <&vreg_l3e_1p2>;
> +
> +       status = "okay";
> +};
> +
> +&usb_mp_qmpphy0 {
> +       vdda-phy-supply = <&vreg_l3e_1p2>;
> +       vdda-pll-supply = <&vreg_l3c_0p9>;
> +
> +       status = "okay";
> +};
> +
> +&usb_mp_qmpphy1 {
> +       vdda-phy-supply = <&vreg_l3e_1p2>;
> +       vdda-pll-supply = <&vreg_l3c_0p9>;
> +
> +       status = "okay";
> +};
>
> --
> 2.48.1
>
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
