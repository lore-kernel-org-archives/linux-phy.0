Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9257FC35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 16:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Mba+0PhqroQvpi2nCWo5nrm+xnt4iBY2CfIXUzvbIo=; b=w/jpF6NJPmqvqM
	iJ9LeC8LoC+/Smvt8/5R5CWSZTjz9m7G1UAkDUqveGJBpUOJfUUOru50RR9ikqRVzHbTddRbsWjS8
	GSvHMx/r9DmCDW9DXALnObkbtadhHvaoR662PxOBrkUueo5RSS437CLm8Q7pjldCoOqQ9kYVOGu7u
	x9uznIlC0Of1yOycSa43RHzYhILSaKQLox6LSgSJU2Klw8Bwy80uMvmsgsAEdL/9DK949s9yUfAjw
	0c+jI1HpVHMNEpz9eIanaNa69cG7DapcuTJFHaYc2CWRtkT4NVXYTUHSyBc4uIWLSNScMMh7ri5NH
	uH+ZTnSxLwIrE2p6cf7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGLuA-003VGU-13;
	Thu, 21 Dec 2023 16:28:14 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGLu7-003VF8-2A
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 16:28:13 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5d33574f64eso10926867b3.3
        for <linux-phy@lists.infradead.org>; Thu, 21 Dec 2023 08:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703176089; x=1703780889; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ogIy9a1gLVZmbEpACopYNApQ/4ttBa03kR3FslbDNwE=;
        b=U4p9OqENvcSwDFtRZq0ETeTuofXd885rcSZPLlT0KtflXK8Jhj/E7aPlCQAEb153wy
         MHmu2/921J4YYXltZcPI88F4u00eDwZazL+vdQcPaAaFe7EHnu2LeV1iXYWsg8/Lz2Q6
         5Bqowc8wltKgXnE7ekHzJO/Lu7lpiDoBjw7riB8/EFsHaMIVxYDJXnltmTjhnqJ8Zoq+
         Ebe2IuX1os3eRiPVTWUbVEECClLCAnYDgm94H3Qij7DnmcPkwAGKMJgDJSZ/H3rg5HpN
         aoWUdF/OoP1X0cfrCfwtJYKDUgW1jitUlBjAKzdCGKg7O6TXAJUpKkZm0+LBGG6P/Hcp
         jyBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703176089; x=1703780889;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ogIy9a1gLVZmbEpACopYNApQ/4ttBa03kR3FslbDNwE=;
        b=EY/GwF9ezZeZTNkXuWTxwHtta/Ja6Flwkds3561yVkt5uKsdCqEoNBQHa1SGGsiFx6
         zxcsHQf+f35ZNR4/S5bYt48j38PIif17F4zhurm1QeALeh+piAoYd+7y69VrkZiTTFYg
         6jt4XCJWE3l5Z2bcHFn8BCBO12ftP+mWAotESSGulHgRmfcO9IuBqwCVLvhe0Ekpm4Pt
         eUxbO5rRcOb2PY94J0n+ydbPDz1QzAfCjYOpd2msyfxN05nToxhkmj8WttrxMTuScoZy
         o45fhG53bBHwJRRT222I1odAY5KimKjDob5QM/MeJO1CXG7QTpNoI/5Oe8+hF+9mgFAi
         IhBQ==
X-Gm-Message-State: AOJu0Yzw9vnf2ePdpzOE9ZwBPhHwa8iCdTNCXufY5bmD93D0SOfDvyCu
	Wwnhq9v9RXlcyIIjR0T27tjzLIOoomV5eikhKJE/+eOvPBI+KA==
X-Google-Smtp-Source: AGHT+IEL2gaqjHNdYgkXNUqNMEgIctDRK1FBPJfqjCqOSkq0nQqc7cjjrq9NLaz2hl/9pb5cp2uk5i0aT6gi38YQNM4=
X-Received: by 2002:a0d:d755:0:b0:5e5:6aa2:a88f with SMTP id
 z82-20020a0dd755000000b005e56aa2a88fmr51380ywd.56.1703176089273; Thu, 21 Dec
 2023 08:28:09 -0800 (PST)
MIME-Version: 1.0
References: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
In-Reply-To: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 21 Dec 2023 18:27:58 +0200
Message-ID: <CAA8EJpr8rKMBzcm-=HGu7-C5hPkNMrnG1cA78O00UjgJVT7p6Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] phy: qcom: edp: Add support for DT phy mode configuration
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_082811_712967_D97ACB68 
X-CRM114-Status: GOOD (  21.09  )
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

On Tue, 19 Dec 2023 at 22:55, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Until now, all platform that supported both eDP and DP had different
> compatibles for each mode. Using different compatibles for basically
> the same IP block but for a different configuration is bad way all
> around. There is a new compute platform from Qualcomm that supports
> both eDP and DP with the same PHY. So instead of following the old
> method, we should allow the mode to be configured from devicetree.
>
> There has been an off-list discussion on what would be the right way
> to pass on the PHY mode information to the driver and it has been
> concluded that phy-cells is the way to go. This means that basically
> the controller will pass another value (that is, the PHY type) to
> its 'phys' DT property.
>
> For this, we need both the bindings value and the PHY mode value to be
> added as well.
>
> The controller part will follow shortly. But for now, lets see where
> this is going.
>
> There has been another attempt at this here:
> https://lore.kernel.org/all/20231122-phy-qualcomm-edp-x1e80100-v3-3-576fc4e9559d@linaro.org/
>
> Compared to that version, this one uses the phy-cells method and drops
> the X1E80100 support. The X1E80100 support will be a separate patchset.

After several back and forth discussions, I think that this approach
is not correct and not that easy to extend. Instead I'd like to
suggest adding a property to the DP controller, which enables eDP
behaviour (and thus makes DP driver call phy_set_mode()). Something
like this:
dp: displayport-controller@ae0000 {
    compatible = "qcom,sm8000-dp";
    /* reg, interrupts, etc */
   edp-interface;
   /* or simpler */
   is-edp;
};

What do you think?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
