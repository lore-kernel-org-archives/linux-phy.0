Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BC94C7EE2A
	for <linux-phy@archiver.kernel.org>; Fri,  5 May 2023 09:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ssqXPizk3lLOJWbDFBleMD2ayu8KCaDBDA4T/cL7aUs=; b=3MHtCW3hyu6EMj
	zCecCTCIzogGb6ww54JX24fDWO+V/PYRRKeAoK5YAlPk3Jh1y3Y7k5qfoIwEBtEvyVko4KIibDlL6
	SeigRrhD36iKn05E+k8011Ma6x5ELKMMU6g5j9ywTET0/vpTEGf4waooZtTTjLvHoD8g5BalzI4nI
	fBlMz+gAmvZlOibnjqvzWcqSpG+jZM2vMBxnr210HlAhi4liRzdPcVfQD39hAcA/9zDCttVngm8+P
	syWXPD/dilCoj2kzjDDQ9Tk5eQ4dPJd/bZtqnGdWmr7B7Kvb4stssb1LG5Pth5XsUUIn5s/TOm2Jx
	9yqyPOFX5LdSyU2ToL0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1purcL-00A7Le-2h;
	Fri, 05 May 2023 09:20:45 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1purcI-00A7Ke-2h
	for linux-phy@lists.infradead.org;
	Fri, 05 May 2023 09:20:44 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-55a5e0f5b1aso13833867b3.0
        for <linux-phy@lists.infradead.org>; Fri, 05 May 2023 02:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683278439; x=1685870439;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CUmVNNVC+NFm1W3KNQtznbgGM7aUA3zExZZF/LzaVUs=;
        b=FP/p5a3Rz53t8Hiu9p1mm5qnJtqy8k8DPZEj9OIZWBicvtZTm0NV6bUKvKL9s/LyuT
         kPWITrgznSc7G0gHTudHZg51Ym5Jz85rr3xxjeAE4g9c3tQhWPM88PNPAnYyA8iRv2Rc
         /qaAudMVsKqE0av2f9jkQUu9kV+fuM/cUQX7t6s8o+A1Yb5IMJseFDL0OMiEXWfxStxN
         7GmxgySoOXuIhVDIuS2TVRt/UoC35jKuy2okLrVpnPrPI2ShD/1X/uQO4nFF6yuUp+1H
         UQqCdYvj3wW+hT+k0rc/yV5szgmhj1m/6qfDuD1KM2j6JxEQiyvkOxB0HY59bDNjQJ/T
         kGfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683278439; x=1685870439;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CUmVNNVC+NFm1W3KNQtznbgGM7aUA3zExZZF/LzaVUs=;
        b=G+LlETOCWvLDygKVohrhbWTW6OF2pM5GIPsRPQZD+aSH7rHA5RR8dGvuUCFpmhwAXK
         +q6K3ZpoPYGPIQ10kv8+2tYZ4v3KwCl/N//2SW2F1NvmcPg1wPQaaYoNtBswepzmKbrQ
         1g5mldzyejvYYbQlQzTkVz8ndDqo1tBe/EfFktMj+nOGMhtjcliTG6PeNnRoRPGT7deN
         brhcWIYoJeaIkhxRByoPj/elZLkqVuW87E+fWGrC4vSuYX1Hf9ojdy0FT01795p39+VJ
         crannMjOZtXX4PTh47v+qrnuiLcRD7j+xKUPbsy67B4U0VLV4Afg9G7pfTldRklCIBr1
         QwBg==
X-Gm-Message-State: AC+VfDw7C1k8PbApOeVI/q6Bc5RDLjKg+mO65xQgwc6k/QbPgFin9h+f
	KMjRbyuLdXbBF28V+i8Lvu9x7UameyUTW8We3Y/4rQ==
X-Google-Smtp-Source: ACHHUZ58rj28L5oxCYIFKkyMOzoHfNWeQkq2DTYySQPBe8Qwd4K17ixkp8gSzmsMgU09dboiqo31SDXmeK2W4fGOIpM=
X-Received: by 2002:a0d:e405:0:b0:54e:ffbc:7ac2 with SMTP id
 n5-20020a0de405000000b0054effbc7ac2mr832957ywe.45.1683278439545; Fri, 05 May
 2023 02:20:39 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1683183860.git.quic_varada@quicinc.com> <4464003b6d955c6f5da991acbecf0411348fc38d.1683183860.git.quic_varada@quicinc.com>
In-Reply-To: <4464003b6d955c6f5da991acbecf0411348fc38d.1683183860.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 5 May 2023 12:20:28 +0300
Message-ID: <CAA8EJprcSEFgQzfX-ULVv3HA2LzBMArZobAuabmE74Ft6mJTzg@mail.gmail.com>
Subject: Re: [PATCH v10 6/9] phy: qcom: qmp: Update IPQ9574 USB Phy
 initialization Sequence
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org, 
	mturquette@baylibre.com, sboyd@kernel.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org, 
	Praveenkumar I <quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_022042_871623_6D4956A9 
X-CRM114-Status: GOOD (  10.24  )
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

On Fri, 5 May 2023 at 11:23, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Updated USB QMP PHY Init sequence based on HPG for IPQ9574.
> Reused clock and reset list from existing targets.
>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v6:
>         - Fix pcs_usb offset
>         - Use correct clock names array
>  Changes in v5:
>         - Fix additional review comments
>         - Use V3 register offsets
>  Changes in v4:
>         - Use qmp_usb_offsets for register space access
>  Changes in v3:
>         - Fix hex captitalization
>  Changes in v2:
>         - Removed unused phy register offsets
>         - Moved the clock entries to the correct place
>         - Maintain sorted order
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 115 ++++++++++++++++++++++++++++++++
>  1 file changed, 115 insertions(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
