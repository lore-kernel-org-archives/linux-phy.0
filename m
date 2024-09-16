Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3B02C3ABCB
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 20:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42zI+gMJ1xpgLP9Sg1QXrv95UUW9SJFHdmqbLKd9giI=; b=0FKYj0XyDlL7Sy
	gddKIUSOPeCnsMAzeEl1aKdX9ua+XpLsBt4hTqGs2i/w7pFLchfERzn1z/xKmtaxqZ1ZvXOmeGtyr
	KW4mxn8X5iaBaLdKy6X5H1PAPQUF5hwcCiGHPl8leTH4UVcXocDvRSq5SvuaN0oQ2ViiJJTLEUWtx
	/sYmdPUGgoUcuMIhdmmum9bdPP9fkAHA8I+oQp85R54vMxHUG2bj2n160m0j46HeDDgGhCuM+OZWF
	M1xf99LTUETXYAbvmW4pTUI4L0bAAV3R83xuYF/B8mBX7AaQd53741eMuO5v7RoMSq/myKejQSLZ3
	h3oV6gUE7MYzPSL/viPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqIPs-00000004qtp-2TSQ;
	Mon, 16 Sep 2024 20:33:48 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqIPp-00000004qtK-3nze
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 20:33:47 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5365a9574b6so5322802e87.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Sep 2024 13:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726518823; x=1727123623; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Yut24jaXEEyXf2W6luYkU7vtIEq+YITeP0mm4QVVNxw=;
        b=NuXr5tpRVn+bVlWEkiIumXLOOdZTAEbvmDx16FzlpSo/3aJmuxWfZQBq0Jx6lIL00C
         cC3UU+NYeOpRAlP+xViQ7XQVxuGbjr8/O1co9B7gkcjmqPQprZXxecqYNUHdQSd/ZNZ4
         3cZKcBLqc/CLHr6SI+DP7ZcapNhGIifmrvyTIy9AB/D75LPn5u73inq7Wqsqs2cJKZjF
         GIcj173Jts2QxWQBjLdiVpoyg0d+Fs0LSSu9/kOONpnnOvQPueWlbsrh2HqZeKl8pR+1
         n/1o7RufLfSKYrDw/3zwz8BR3LSByXjp/wibQURtltxwu1cHhK9A3tRqVxoEzJhV8y53
         7sgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726518823; x=1727123623;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yut24jaXEEyXf2W6luYkU7vtIEq+YITeP0mm4QVVNxw=;
        b=ORU+41lGu/9+rXTUr+e93JjMO6sZzUpZ+/be+jDxbnocBK64Qrn48naJMKvtU/v+DO
         SDKhUPZDBDZ77IOE23GR45A6Bsf5zypN1ZbZvZt2bQ+frdz9yHr+Gn5B1iil+n8Kwc6a
         a3ID9vhCjxQZAlvwpmVs0uO5txOttYA+nYuXO0g0x/2f43YiGqFQVktvW8x+6Ar7wtCr
         EUKFlz7Ixzm/GiHexDEnUbioUAtLG9hMMnXzX8hakk/JLnkKc1KhZjcFabcouurkopXx
         cPOxxNPUxkGEdSaHUKVLPQ3txF+0r0Wij1+Xah2dQEA6zPcTALANVZVns3YddnbETNfe
         YZWQ==
X-Forwarded-Encrypted: i=1; AJvYcCULDZ0CoG2+b2KZkcio0H3vyTlLMVjFSkim5BXsGeA/scgZpgOQWqqVzsDksZMev1Jvr1cEGFD9szs=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzF7DO5rspX+3K7PAlT0PLOmyaeSuLofkUVCLHepLWMR8Mb544
	shg4h9KD6LMXSRaYeG0ogaxONl+PClyce0P+il3qs/Sxnd/WhfDKth0/Uc8mHpc=
X-Google-Smtp-Source: AGHT+IG9vXaSNFzRABgfXln+bLUZnXnpxO3ZvNYLOdCVSLIxonM0R628q5CyjP8oU+JQdKKaIhTAYg==
X-Received: by 2002:a05:6512:3f0f:b0:536:7d7d:c621 with SMTP id 2adb3069b0e04-5367feb9550mr8405049e87.8.1726518821966;
        Mon, 16 Sep 2024 13:33:41 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5368704685esm976445e87.27.2024.09.16.13.33.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 13:33:41 -0700 (PDT)
Date: Mon, 16 Sep 2024 23:33:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>, vkoul@kernel.org, 
	kishon@kernel.org, konradybcio@kernel.org, andersson@kernel.org, simona@ffwll.ch, 
	abel.vesa@linaro.org, robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_khsieh@quicinc.com, 
	konrad.dybcio@linaro.org, quic_parellan@quicinc.com, quic_bjorande@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	quic_riteshk@quicinc.com, quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: Add eDP PHY compatible for
 sa8775p
Message-ID: <t4ytnii3sdiqsni74d7qsi2c6uv2klwmzmgznnirt2z55to4hj@lyaoh5fzcyti>
References: <20240913103755.7290-1-quic_mukhopad@quicinc.com>
 <20240913103755.7290-2-quic_mukhopad@quicinc.com>
 <2hv2hcpbanduw4wg2wbza4jkze4sgilrtyc7zack23uygwsjol@ckskl2rkd5xp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2hv2hcpbanduw4wg2wbza4jkze4sgilrtyc7zack23uygwsjol@ckskl2rkd5xp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_133345_986983_32F8B0BF 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
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

On Mon, Sep 16, 2024 at 05:23:55PM GMT, Krzysztof Kozlowski wrote:
> On Fri, Sep 13, 2024 at 04:07:51PM +0530, Soutrik Mukhopadhyay wrote:
> > Add compatible string for the supported eDP PHY on sa8775p platform.
> > 
> > Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> > ---
> > v2: No change
> >  
> 
> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

So, is it reviewed or acked?

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
