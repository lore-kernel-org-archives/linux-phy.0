Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7654BC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 04:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjiNj0xhOEwOyC0A9fl3xfmpUcWlt2S9+u4li1A92bE=; b=L/vBvuKtEzSfkS
	St9Kv6fUb0UGOwUJCGutWkCqRMIWQjxm3eFbobpP9fJnZIYjPsoipk+aCLtkgGOjHKdDl3pPHSeEI
	TLyq27HjQLfVOpebGGraebYzfXEMvmqynoVTPsYRwNKwF4BrBFfintj55K1K4q6qcFoA+xYs951oN
	Pe64WzWn9V0ynUIt7W5GF/kFPxaO55QfMsgZFLLLBs4UbotZqpTYpl/AYXn+8jEgVJdunYysjyhUN
	lbnvtqnMnocORMDjMJhDLEeDX77PZv++S4j5dvgwBBcJEvz66wFwMAxaZ+6jo6DWlielTYEh1CisL
	JKVe3Sqik6CySSF7yBxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOtpK-00EptX-Vj; Tue, 01 Mar 2022 04:09:30 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOtpI-00EptD-Ho
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 04:09:29 +0000
Received: by mail-pj1-x1030.google.com with SMTP id
 gl14-20020a17090b120e00b001bc2182c3d5so896543pjb.1
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 20:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=quZTQxwk0NWM3WGhGpbLGo6RYtfkEu68zMDB/uBuTfc=;
 b=cK7YVLFPpjgGyo/3YJGvYg2R/sBMDBLA5FPYxDB6p2dUXahXvr0P7Z+seLuA8H53cP
 oGVpnbrjtRzgiKn4mnO4/quWGnyIeR5XM6ow9Zprshnj/1hRwsihS4mZBYcuIPV9xOGq
 ynge0fIXLVcxVSJKGM8PGBS3YhddDzAjzEMTUj3uxjvqvVP0heceYYRGiZuxVhD8bldY
 6xB94qh8EWDMWEsJodalKGJPCGICn0YXVV+LieAS2CYrC0F9CsGcuyuHUd9PQIw89Y8/
 t8t1E9qAkQ/lVbrlNr90dEyPCA4PQRnWGZ7brz4ZX58NVX+fJoRpNiSFD2m40HLqAUGE
 CJrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=quZTQxwk0NWM3WGhGpbLGo6RYtfkEu68zMDB/uBuTfc=;
 b=bbZS0fuUZViy1Rm2nUEELiKasA/C+a/C2sXVDCZamfM95mswlU6DxcChbl2M+y2722
 dVvamft3hbSXxoBTsPI+Pn9SIO3YpISgXejjL+8mNQglUDk72VYt0XmkQda+RAu0pgu9
 149115Aqp+Pmk/TLTxfpoMBdzxHASEyD4nWow7FRypg3PwMarZIo7nBjJ3LYrhvE5eGj
 iuI1OTrEdhsAzDWfWa0PXKMELIG34la8cVjIHNkKUaEHf02swI8hjgyp9bciLvwWtOjh
 tPCC8466p9UEkbzTaVFJ9tfjMbuiY6FSiG61Jiy0/bNpP5KTfXmKO7cXIAIvd2JvjxdK
 ygeg==
X-Gm-Message-State: AOAM5332kvI/sPspGDqswW/XoY08K7ToEpQAhQ5JKU9fVJMMcmpSRY8+
 o1P1HGoVIl3WMeCnpytpZ6SCAw==
X-Google-Smtp-Source: ABdhPJz/4cqwvUAT2nHdOOndhoW5R+LBbAj/1KgEzitnkuYcy7PkmLPJVqhm/+2hfL86kD8/WPp1QA==
X-Received: by 2002:a17:90a:ca16:b0:1bc:16a7:e840 with SMTP id
 x22-20020a17090aca1600b001bc16a7e840mr19857923pjt.225.1646107767936; 
 Mon, 28 Feb 2022 20:09:27 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id
 j13-20020a056a00130d00b004f1025a4361sm15252492pfu.202.2022.02.28.20.09.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 20:09:27 -0800 (PST)
Date: Tue, 1 Mar 2022 12:09:21 +0800
From: Shawn Guo <shawn.guo@linaro.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
 agross@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, vkoul@kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 4/8] arm64: dts: qcom: sc7280: Fix qmp phy node (use
 phy@ instead of lanes@)
Message-ID: <20220301040921.GG269879@dragon>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
 <20220228123019.382037-5-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228123019.382037-5-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_200928_642175_A1021733 
X-CRM114-Status: GOOD (  14.33  )
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

On Mon, Feb 28, 2022 at 06:00:15PM +0530, Bhupesh Sharma wrote:
> Fix the 'make dtbs_check' warning:
> 
> arch/arm64/boot/dts/qcom/sc7280-idp.dt.yaml: phy@1c0e000:
>   'lanes@1c0e200' does not match any of the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Reviewed-by: Shawn Guo <shawn.guo@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 937c2e0e93eb..575f1f00f602 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -1669,7 +1669,7 @@ pcie1_phy: phy@1c0e000 {
>  
>  			status = "disabled";
>  
> -			pcie1_lane: lanes@1c0e200 {
> +			pcie1_lane: phy@1c0e200 {
>  				reg = <0 0x01c0e200 0 0x170>,
>  				      <0 0x01c0e400 0 0x200>,
>  				      <0 0x01c0ea00 0 0x1f0>,
> -- 
> 2.35.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
