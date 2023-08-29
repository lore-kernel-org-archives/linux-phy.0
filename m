Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DD2CC71153
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 14:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xBvWqytqBo5IyFcdHKqMwNoSt8lLNTmU9XIZh1f3nCk=; b=EhJOTht7lzETLZ
	j0YCJHB/p8Lntg0xfqi+mspVuOb7tawfQQslrimkV1eNgwjgy50kyY9tjL6wC2dsJA7NNiNr5QHIZ
	IXL6WLTg9kg30V165R9rF81HY+BbMTkTlJ0GpMEFFchipGV8S+tnVRq/J+RWgbMo2o9po3H/1c9jP
	o4F8/y+OsoJAbyWA5esTOIiQchjsQ178R/GNqZg8WxHQ3F1n/9nQvzwb2zD9T4FyYcUzT+/KesMSb
	BajAboXgwkeY6FjJJZAkMTE3nTGEqUV5M2En2JIaEcoWmbidbVRjCR/1BaA9VsOId1ZnFMc/8gGO6
	gg9BQIbLp7xHWyspri5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qazZX-00Bgq5-1D;
	Tue, 29 Aug 2023 14:19:59 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qazZU-00BgpD-1y
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 14:19:58 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-d748d8cf074so7337138276.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 07:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693318794; x=1693923594; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u6C2BMeyRT9BVmnW3F8DPujOXWC4dh3QQ/H+JPTB0fs=;
        b=q7otvqfnGhUGbQen8Dqk1t+UpRo/+V1mZrn/WlQzmSKQ/LFfhp6+YYQ4u90NmfFQZF
         ZCTb7iSqD147hHxSYCTAB3wvZxyRBc8Ot8QIWlXOoZs/A94D9hGz2zWfxZnxdeULt+hL
         PIJGTrFG9/uzh7pdIXVnDXf4r0Kv6AgJfe4KPQgbFSgmUMhx7tXy9RoSMAouRG8AXovc
         pkcmffGTXDYmdX8DMRoO6fdPXVU+bI139BW+1KcoczuyYRyKocsrCNrjoD1tmabWiHT/
         X+HqJjk+ebFWhkWTjziP52p9xgNShwO3WoxZCPZ4nWj4fcBIFjwES2NsQDzo8FfJgDat
         eRHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693318794; x=1693923594;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u6C2BMeyRT9BVmnW3F8DPujOXWC4dh3QQ/H+JPTB0fs=;
        b=GvyvArCmlPG7bALJ5RY4ktAqZRQqnQoXugZkxs4p5Xtg/eihic+xDb5attM2E376mS
         4CFDzQ5LxzkM19kRx9knhOIRTNFgkMUgK+CsTaQXKoS0EhVLhFfPtbv1zRZu0DbHaOni
         qsqBBtjGVQOxoN6mJ5sU7L/eIVaoazag2eidtRrA+tH90UwQH0bKGvD4x0tmw9EhQiu7
         ShV9RGDaM2WEQnSC+Mzvmhd2TW9mSErzXvEIcXEKk4f1gKIzhHD7jWGv/hW4TZu09ABf
         8waBwmaVbnUT8gNgNgw+qkOPzoEFvFKFR+TcWHN65S/vCbD2h+l16uGmOj4bWqt0WkjR
         azuQ==
X-Gm-Message-State: AOJu0YyDvoxW3vZ/5HZh1XLyrQjvlU//vuteiVMEZ3x325A/VufWncvH
	l1j3jPRdcIWbF36PYjpMskkaLM35kGDd0mtUBpM4Lw==
X-Google-Smtp-Source: AGHT+IEgqrTR3rzPEkyWMAt43eU7aH3VbO5cV13+UrfArXFHtoQoQUe+dIwD7Q7am42u6ixQo1XAFSnYnxc1PpJrXK0=
X-Received: by 2002:a25:d38c:0:b0:d7a:b6b9:73d8 with SMTP id
 e134-20020a25d38c000000b00d7ab6b973d8mr3445294ybf.20.1693318793789; Tue, 29
 Aug 2023 07:19:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com> <20230829135818.2219438-2-quic_ipkumar@quicinc.com>
In-Reply-To: <20230829135818.2219438-2-quic_ipkumar@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 29 Aug 2023 17:19:43 +0300
Message-ID: <CAA8EJpqA-poJ9=XKJa2s=yZUGbBbgOqgiDC-q9skJzBqLux84g@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: phy: qcom,uniphy: Rename ipq4019 usb PHY
 to UNIPHY
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: robert.marko@sartura.hr, luka.perkov@sartura.hr, agross@kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com, 
	will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de, 
	geert+renesas@glider.be, nfraprado@collabora.com, rafal@milecki.pl, 
	peng.fan@nxp.com, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, quic_varada@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_071956_646314_0D99E64B 
X-CRM114-Status: GOOD (  15.37  )
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

On Tue, 29 Aug 2023 at 16:59, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
> UNIPHY / Combo PHY used on various qualcomm SoC's are very similar to
> ipq4019 PHY. Hence renaming this dt-binding to uniphy dt-binding and
> can be used for other qualcomm SoCs which are having similar UNIPHY.
>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
>  .../phy/{qcom-usb-ipq4019-phy.yaml => qcom,uniphy.yaml}  | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>  rename Documentation/devicetree/bindings/phy/{qcom-usb-ipq4019-phy.yaml => qcom,uniphy.yaml} (78%)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> similarity index 78%
> rename from Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml
> rename to Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> index 09c614952fea..cbe2cc820009 100644
> --- a/Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> @@ -1,13 +1,18 @@
>  # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>  %YAML 1.2
>  ---
> -$id: http://devicetree.org/schemas/phy/qcom-usb-ipq4019-phy.yaml#
> +$id: http://devicetree.org/schemas/phy/qcom,uniphy.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>
> -title: Qualcom IPQ40xx Dakota HS/SS USB PHY
> +title: Qualcomm UNIPHY

We know that UNIPHY was a common design / IP block used for APQ8064
SATA and MSM8974 DSI and HDMI PHYs. Is this the same design, or was
the name reused by the Qualcomm for some other PHYs?
Several latest generations have USB QMP PHYs which are called 'uni-phy'.

>
>  maintainers:
>    - Robert Marko <robert.marko@sartura.hr>
> +  - Praveenkumar I <quic_ipkumar@quicinc.com>
> +
> +description:
> +  UNIPHY / COMBO PHY supports physical layer functionality for USB and PCIe on
> +  Qualcomm chipsets.
>
>  properties:
>    compatible:
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
