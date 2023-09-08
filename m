Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EFC3EE57DA
	for <linux-phy@archiver.kernel.org>; Fri,  8 Sep 2023 07:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8w3EpcrraD6srydH4Ms1uH7/cmHchVWFT6+43J6C6+U=; b=ozEPEdMF5CDP4J
	dCA6oJ7Hknyc8ljndY5Ymj+iYZweMuE5+c/2e8bpLM0gSaQfblfPe1Vh2b8BvhuRwxC7/mBSXfCMI
	+PvMXsJSkbuKVEWWpcgUhJmltsEJode81uUUY9u0bSfhmko9s1Q9Kf+rWkBYr/G2g8kLhMNDjE0nG
	WRE6oX897NwolIAofqtir9gQSY7mxU+NGe348q6miWpK49OygFkBu6TBSJRTELcZwnkcVZByY7Gk7
	wGnkXC2hL0cbgkzY/SKzmX5APQlaInmRtAmS4ss6rfkjQo56Dam3DcRMHbopUiZZ5j4x37uyG5ISU
	5VxsywfHhSuzzCUBzrsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeVld-00DEU2-0f;
	Fri, 08 Sep 2023 07:19:01 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeVla-00DEST-1J
	for linux-phy@lists.infradead.org;
	Fri, 08 Sep 2023 07:18:59 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-402be83929eso19746885e9.3
        for <linux-phy@lists.infradead.org>; Fri, 08 Sep 2023 00:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694157534; x=1694762334; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4jUsdI8IAMPdJ2/ajS6yTZqWDFGbQHyhhBt8Pkr2WW8=;
        b=AuIajCRXc+BWR9xquc67c52/gDg2w5qZmnVItsvEmhuT7QEBlPbqWPg1cy/j6CXtar
         rirFUiLv8nKBt0jKCAqLr4bLCPZU6MzznGO37ITkPUS1XsTY/cESHGO1QhQUNY+S5L6M
         d6AHy4xZh99vfXlHcgp8U/K076SWdxaCBu4yVD9Y+avtSvWI5B0/RE17BnvBrk16wU83
         IdA8+srjcvf2ZJVo09sGFk4X1xtfLrjUVe6fYUImeu6RRgtJBJAPlkJZzVI2E0nPZPla
         Dq0R0c7R3YW72Xlz4yroezg968faj+qA5INGE2RAmz+m6Xx819RrocrejyA3szPAvO+r
         bRHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694157534; x=1694762334;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4jUsdI8IAMPdJ2/ajS6yTZqWDFGbQHyhhBt8Pkr2WW8=;
        b=cgrK+M55sYRi+cl/jupXXtrUZuK+/1RXb4z7efWyyXaPxauQfimzca98RCN+68Ksgk
         jymNin9JWBpWCymlpL5iJaiNyyyl4LzKGtTTtOihP0AzbmLBYBbr8JvfoifxTdlQTnWf
         f/ksVIllXDifG/xJpTG7Hq9aNH4AH9EX2vf6V7pncF5fj0C7LVsW8aX3NGblBzddZn5e
         m71Pzc35GZgT29blTrLyPPfzpA5/nbICVcbS2r5dxRKuglBwqTA/kqx0R/qDQSI70ufA
         7ekA093AH5CCnpPxnxLlP2zcTGLEnG2K26wbrKVtkxtPzXX85FSMChVEJOIoGl6SoV9K
         PReA==
X-Gm-Message-State: AOJu0Ywg/HG4Y8ijy+0J90PiIJZI5EVBTzWnuyF+lCm9Pb2alvA0LFOl
	9ees7R/ZICf3OzXlUxy52Ensew==
X-Google-Smtp-Source: AGHT+IHQsY/0Ej3aK9aAUnwQ/E6w27NF8Re4ys97xwbLX+YFgUeolkfZLNQJw3R/v4XFVKS7HptjDg==
X-Received: by 2002:a05:600c:3b1e:b0:402:f536:41c5 with SMTP id m30-20020a05600c3b1e00b00402f53641c5mr1277095wms.3.1694157533662;
        Fri, 08 Sep 2023 00:18:53 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id t24-20020a1c7718000000b003fee7b67f67sm1182993wmi.31.2023.09.08.00.18.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 00:18:53 -0700 (PDT)
Date: Fri, 8 Sep 2023 10:18:50 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Deepak R Varma <drv@mailo.com>
Cc: Varadarajan Narayanan <quic_varada@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-m31: Fix error code in probe()
Message-ID: <5a6da4c1-6d65-4219-8314-9b5697bcf8e8@kadam.mountain>
References: <7926c8e6-630e-4d7a-b0b2-d29b3c8b2c09@moroto.mountain>
 <053077e761ecaeb44b76f5865e100d588101461b.camel@mailo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <053077e761ecaeb44b76f5865e100d588101461b.camel@mailo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_001858_450598_7003D205 
X-CRM114-Status: GOOD (  10.57  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Thu, Sep 07, 2023 at 09:53:36PM +0530, Deepak R Varma wrote:
> On Thu, 2023-09-07 at 12:54 +0300, Dan Carpenter wrote:
> > This accidentally returns the wrong variable.=A0 It should be "qphy-
> > >vreg"
> > instead of "qphy->phy".
> =

> Hi Dan,
> Just curious: How did you find this? Visual catch or Static Analyzer?
> =


This was from a Smatch warning.

$ ~/smatch/smatch_scripts/kchecker drivers/phy/qualcomm/phy-qcom-m31.c
  CHECK   scripts/mod/empty.c
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC      drivers/phy/qualcomm/phy-qcom-m31.o
  CHECK   drivers/phy/qualcomm/phy-qcom-m31.c
drivers/phy/qualcomm/phy-qcom-m31.c:175 m31usb_phy_init() warn: variable de=
referenced before check 'qphy->vreg' (see line 167)
drivers/phy/qualcomm/phy-qcom-m31.c:259 m31usb_phy_probe() warn: passing a =
valid pointer to 'PTR_ERR'
$

regards,
dan carpenter


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
