Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19318C41535
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 18:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JAFAewcpUtrhV7Q6CASG4rqzEMsyu17Zr7xD7xiF8M=; b=ChwVc74cMw7jf9
	L7Stm/xdNIs7iSduCdKcHSWv3aWzRYcSfmUYYl8fu52XbZtKAopyLAeYRbp5zDHX8QFdopeSj4pmt
	iLbLeXUNwbk9k6aGeo692w3wTQ0f4q5Pal4AdxD0M3DQRR/A9JW1zaKo2qTetImzBKAzqiC7dwwPJ
	TIDv8S5cK08kt2o1taiZy/AXTtkny4jFTGorar70VRgde9K0+TmOClA14sjeRsDZ3GIas2i9L69+7
	KMXQoP18MY+3nlCAhnB6puI0rO8g5GvKMCZls0gC/E2i0upVt/uUnk6nwTlhUO6Gcw60RTA2B3Dzg
	rY8koEtdKbR4e/iJ7fjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGkWd-006f7E-2C;
	Fri, 22 Dec 2023 18:45:35 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGkWa-006f62-36
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 18:45:34 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-33621d443a7so2067359f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 22 Dec 2023 10:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703270730; x=1703875530; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zHNnaUGtuUDBiRbQTC4DjqH59Wm+XQsX9ZCVXhGxcmY=;
        b=axcc0cGgE9ITbI5V2xGteaUvZgDqvEWQeUrnFdwdr6ObwTKtZsafijh0HeJQfceNlB
         5y/HrKXIGCgmeSMyYkznPNKkg+3S5AjsELil4lI5Xc0idcYfHZ2cooAoiMBNIuWn5jkU
         s1NO+fEysXYBcLGD6rpXYawi9k/qANioH0P92enuthRmoYfiwLif8rJ02dZ1aiG8zPP0
         ctodPmU3O0gFTnxjMd20CjeAVLvPwWck7fFYxfANN/d4I58ONPBapnKx1xCDM4sH/eB5
         XB4nGV6S8838C4b3M2je9eCzx35eppvAztKfJUFjNp8i43DoXqF1sjV3UB7+5IfVzzeP
         dsDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703270730; x=1703875530;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zHNnaUGtuUDBiRbQTC4DjqH59Wm+XQsX9ZCVXhGxcmY=;
        b=a2aTmADQ7LN8d04KdrUld2FHKuAHJDayM+wAf5FF8xx9CVvUQkkiVDE53VH937C0dC
         62XU7VbZ2A0kZ1XF70P4Kqi4RLukmY9X3K/CLaFvmeb44kdvnWEU4U1oDwqfxrxREtM7
         reEW7U+sbrMLzK2MzVJgKV4hJ9GP5DU46M9fJ+rVdFpjy7anDI9CpLKzBT+dfRRJK9+9
         QxN9Pe8accZrmkQiGVxahtXmmmPsmmiwhKXHjKZhoNqcxYov7xlh+WYoJdu1oh9Fdu4Q
         QTTkSM2Ou8DcHLG6bW+OxVOY+4osyV3vLjzpBDuZO51O04yTwpu9slunqMtP2Ebtz/l8
         Ei6A==
X-Gm-Message-State: AOJu0Yy71RA63ZXt3sQWFDMiut6eTrA5XSZ4iXyCfsk78riQRLCl5Gqu
	PNH4eIydUxYnB2Vp/+H+5wJ83cPf8AZeaA==
X-Google-Smtp-Source: AGHT+IFxOWH7S7Ji1RFEKXpbkuuAkL4Y7Hhou4FYDtY1KZnmMlrRW/vKSNPbQAZiUzUNXs73ZhrDBQ==
X-Received: by 2002:a5d:5f8e:0:b0:336:8770:ca09 with SMTP id dr14-20020a5d5f8e000000b003368770ca09mr1223228wrb.134.1703270730068;
        Fri, 22 Dec 2023 10:45:30 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id w18-20020adfee52000000b0033657376b62sm4898525wro.105.2023.12.22.10.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 10:45:29 -0800 (PST)
Date: Fri, 22 Dec 2023 20:45:28 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/2] phy: qcom: edp: Allow eDP/DP configuring via
 set_mode op
Message-ID: <ZYXZSBQrpRnGTgKI@linaro.org>
References: <20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org>
 <d2a2762f-4565-4a0b-a99b-099dcce33268@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2a2762f-4565-4a0b-a99b-099dcce33268@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_104533_039545_5B7CB0FD 
X-CRM114-Status: GOOD (  16.02  )
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

On 23-12-22 16:02:56, Konrad Dybcio wrote:
> On 22.12.2023 14:01, Abel Vesa wrote:
> > Until now, all platform that supported both eDP and DP had different
> > compatibles for each mode. Using different compatibles for basically
> > the same IP block but for a different configuration is bad way all
> > around. There is a new compute platform from Qualcomm that supports
> > both eDP and DP with the same PHY. So instead of following the old
> > method, we should allow the mode to be configured via set_mode from
> > the controller driver.
> > 
> > The controller part will follow after we conclude the PHY part first.
> I got a bit lost between all the propositions, how are we going to
> discern the controller modes going forward?

Have a look here:
https://lore.kernel.org/all/CAA8EJpr8rKMBzcm-=HGu7-C5hPkNMrnG1cA78O00UjgJVT7p6Q@mail.gmail.com/

I currently implemented this locally, using the is-edp property.

Whatever property we will end up using for specifying the mode in the
controller mode, the set_mode op is still needed in the phy driver.

> 
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
