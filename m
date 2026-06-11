Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BEE7CD98D2
	for <linux-phy@archiver.kernel.org>; Thu, 11 Jun 2026 10:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDNWrHPcUMshm4teCSWNgrtqKbwah7O0v7+m1GYjRL0=; b=g9TWlQ3hM/wfJ3
	ijAGCE8t21IVJxStAJ1G7JRdBOST1GuCk4wZQNZA8FlnoK3l6O1kO0dPs4YIiu0Nsi5GmoZ7JG9zJ
	PjpElhOj+gonohJleHyQ4qgoYKLEmkhh1SAONokaIGI8VXCS3ZnUV9u1J94PY343Un4tlBh+/yg5E
	4apExLhSLmHBXbo8FDYFjv6hGNk8LBIfSSvWZishSV1GTv8BL9IiTrj37H6L2u8GgDbVNEumsQPrg
	UoaZjBR9Mot6R3dZrN8vjuMHdka+EL2MVAO5OM9oW0iKllxZzs8zSEZ/kCaniWNrvXH+Yi3Dpm6fz
	JA6o2KKWjfbCLinCfArg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcED-00000009BS1-49Jm;
	Thu, 11 Jun 2026 10:01:37 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXcEA-00000009BRV-48Ed
	for linux-phy@lists.infradead.org;
	Thu, 11 Jun 2026 10:01:36 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-396773734e8so9928451fa.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 03:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1781172092; x=1781776892; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z6S7G7H1yZX6es3QmcIIuBRUMbZtpN//hujuIUHm018=;
        b=xJKjL0jhg3Pf+NJg5rlNk+/7U07DFQgziFFTD26hrprvMTzq+H0qJWdtCcPmWrWvTL
         P5c1aieHXOVCxRICaWb3fSYwKqZ90JjuhmyWv5pNLqiE8mjSTU86abuPDQKT2Lb1Dsrd
         RLcT3hcMJfY+02LKKvRnjtgQaY6dp0Qbj+dm4lhjJn7AFlImf2KlRW6deo+7BWvMTkLy
         l1Hp9apcH6UqD0rm/Y6mYSkBGufK2Wj+yr3K0Guq+k0Sk7VIxk/ojYfcculU98vNglVw
         y3yX7kjLYa15LO/A7usFnrYHnwafSV8znNIZJFhpVZRxrQVhnFjgoCsQAg7pQL+/kiz/
         x+PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781172092; x=1781776892;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z6S7G7H1yZX6es3QmcIIuBRUMbZtpN//hujuIUHm018=;
        b=bWxBpQWBFedHd2nrnO6ozCYglhdhgZVTUoL+CEOQXOmjTw4HX7+KduMGQwuhYkEzO+
         9637ZnXUSb+TSLJoK9uyD0Ar7BvJZ4I+sERlhTqu0Wk72QSmWN5fc1tE10nvLVeeV0wq
         +HkboKvfoEPqM+9gngib39g36xsD49dfjtVm0N/SmmLdw72WG74tLrkUH0cg5U4jtEum
         O8Q3r0XiputSjfzdbj/YJ/Di4FfaXZWLSkurLDJaHlENRWmnSv25Uo/HJVVPoj2XOtP9
         +vqAHXgodr0KEI6iRicJiGQt9KeV/P26B8HVnCxXOFhQ+YtNUlSZaD1JYsPKkLeur958
         tthQ==
X-Forwarded-Encrypted: i=1; AFNElJ+2arrcOdB6KTDpovkaaQqSXf0D8C6Hs0c1zXrs1cxI7EJU0QGl9/vXiaOBlxuXKiOhXS6flCn/3nU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1fui5nB2Lt/HWLgwk9PnqchXJ36GDlUG/X1F+bYJS9KBAwp84
	/iOeN6BuDt+NS6BQTyOjJdKggyzo4CY1p0q5TmkjvCwIJLBG4edtRVyTcuK3wzBGJdU=
X-Gm-Gg: Acq92OHQkp5QIVl1KfkTMcK//EhX4eXLCgbH+3C8fenZeTjd1xvXWsL7nmHUPRHGeTK
	bbObxAZc4WMyXbEWevo0pUe1dzlTknUvlH6z7gn/E3KFIFE0Pb0V1PxqCyiMLkgzXa8lIZNVWJk
	w+IJ+XYufamsIzqF/RXlTytkhqGdsnPHbidNgUM9gpG7CeZUyEpvbtUNFlb05gfAurzgoyDe0Z3
	B2sEl3XCFO/9BfLFaZEheWsa3KjSRlduZUvi30tkBro2x5L8klzAOdhyM2S0hoBoB41GNolHIYy
	89yhyACwN/u1djemlpqdcnLmB39LhcotR7+XQRpENmTBGNIRjHo6Gpzx4fhQiFWrjDoyWL5mpgi
	vu18MhfiW9C+7WikZqznLMhffADPqwy50NQjFrEvVs0Xs0Mv+6lmy9Fwy+DvoPOAMkSjM9vLTgW
	MyhAv1I0SnW40uPz+fpUCi8euHP7JhZ17wK+cTJ80sYtnXQvmkoK7y2bTcjO5J2yYA5dXEgpXAj
	TWQuwpRqiurwayv
X-Received: by 2002:a2e:a90f:0:b0:396:7e06:4ecd with SMTP id 38308e7fff4ca-3991a0f7804mr2442451fa.7.1781172091878;
        Thu, 11 Jun 2026 03:01:31 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3991adc355asm3445981fa.41.2026.06.11.03.01.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2026 03:01:31 -0700 (PDT)
Message-ID: <8be0a964-e2fc-4c0a-a5ca-0e9e42b3d747@linaro.org>
Date: Thu, 11 Jun 2026 13:01:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] media/arm64: HM1092 IR camera and ASUS Zenbook A14
 (X1P42100) camera support
To: Ramshouriesh <rshouriesh@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Aleksandrs Vinarskis <alex@vinarskis.com>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_030135_053620_8C5735C0 
X-CRM114-Status: GOOD (  20.11  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 6/10/26 14:09, Ramshouriesh wrote:
> The ASUS Zenbook A14 (Qualcomm X1P42100, "Purwa") has two front cameras
> behind the SoC CAMSS: an OV02C10 RGB sensor and a Himax HM1092 mono NIR
> sensor used for face unlock. This series adds a driver for the HM1092 and
> the device tree to wire both sensors up on the A14.
> 
> The HM1092 binding, driver and MAINTAINERS entry do not depend on the
> rest of the series and can go through the media tree on their own.
> 
> The remaining DTS and PHY patches are the A14 camera enablement. They sit
> on top of several series that are not in mainline yet, listed below. With
> those applied the series builds on next-20260609: the A14 dtb and every
> module it touches (hm1092, qcom-camss including csiphy, and the
> qcom-mipi-csi2 phy) compile and work: both sensors probe and stream
> frames on the A14.
> 
> Prerequisites, in the order they apply:
> 
>    1. phy: dphy: Extend phy_configure_opts_mipi_dphy to support position
>       and polarity (Bryan O'Donoghue, v1)
>       https://lore.kernel.org/all/20260325-dphy-params-extension-v1-0-c6df5599284a@linaro.org/
>    2. clk: qcom: videocc and camcc for X1P42100 (Jagadeesh Kona, v5)
>       https://lore.kernel.org/all/20260507-purwa-videocc-camcc-v5-0-fc3af4130282@oss.qualcomm.com/
>    3. phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver (Bryan O'Donoghue, v8)
>       https://lore.kernel.org/all/20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org/
>    4. media: dt-bindings and PHY updates for CAMSS on x1e80100 (Bryan O'Donoghue, v11)
>       https://lore.kernel.org/all/20260326-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v11-0-5b93415be6dd@linaro.org/
>    5. arm64: dts: qcom: x1e/Hamoa camera DTSI (Bryan O'Donoghue, v3)
>       https://lore.kernel.org/all/20260326-x1e-camss-csi2-phy-dtsi-v3-0-1d5a9306116a@linaro.org/
>    6. media: qcom: camss: Add support for X1P42100 camss (Wenmeng Liu, v2)
>       https://lore.kernel.org/all/20260511-purwa_camss-v2-0-22608ab9126c@oss.qualcomm.com/

That's a long list.

> 
>  From the videocc/camcc series only the CAMCC block (patch 6/6) is still
> needed; its clock drivers and bindings are already in linux-next. That
> patch adds the camcc node and sets the Purwa camcc and videocc compatibles.
> 
>  From the x1e/Hamoa camera DTSI series only the CCI and CAMSS-block patches
> are needed; its CAMCC block duplicates the videocc/camcc series, and the
> x1e80100 board patches do not apply to the A14.
> 
> Patch 1 adds the OV02C10 node. It is Aleksandrs Vinarskis' work, carried
> here with his Signed-off-by so the A14 camera support stays one chain.

This patch should be removed from consideration, since it is not based on
the upstream codebase.

I'd suggest you to upstream the sensor driver only through linux-media, which
is patches 2/9 and 3/8, all other changes should go only after it.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
