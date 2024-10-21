Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4BB4D0E6D5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 09:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ent70pSAw6CQktqxqDrYpZtAtJAxWZ4szlqiDVSFTRM=; b=XC8jgQ3Qyonxy7
	6e+uHSQOVnPoNWs2T94uFXFhj8yEizryJiGZ/Y1wQxsViRzftgo2Rt4wSXNnKgtd4K9eA0NQvtc/8
	PZCY6d1qxxQwLWGac8m5bgT6zmQ4Syv+XrlInqahbuRu5fNrhsvZodFqEdHtJhrvENmnLMZtgKJAz
	rKWFytqsqoIhJJY9hfYqU/dV31eB+btKF7QzUJwK16zmzXD7wkYLIdMdRPZq+vJYJOr4QjdEzw8/G
	89+YWm+WsD4IfffcLN6AYinlhnKs/pbAjcVvjMDN1fa2j/PYmvUc5WUuXNmyN04+h8AEVYB6qCotc
	Eb2npk2aw7vAgeY5GZKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oYH-00000006fsq-1RIk;
	Mon, 21 Oct 2024 09:18:13 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oXT-00000006fmW-3Ulv
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 09:17:25 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4314a26002bso46858305e9.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 02:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729502242; x=1730107042; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=L1h1ZxH2zfKDXMJFGr7FqjuquR8vJBZMiFARTAc1c60=;
        b=qCq2R+ilixd6ZWLwQNPu01VOTro8OU0Kq+bfqe1wkMocFs6unVG1x1wqHep4ehVOTU
         /NkCZ8s8B8c8MOfV0mm0zMxI9WydZGslFCKVskOtfmzXBm7srtgSPZU+TPKL4s8YyK3b
         WVV95YY34pBv330YkgYkx/eK5JP1uJzoX2puRu/osVdkB7EiDufZ2BkLMYrBCpofLTIz
         M7WWvT7djuGZBfMr5j9pcTSZEbj6M8l4FZ8StW4vy8hD03KxS0/L11e2J24XtZOI1z9q
         Wa5M4Sqa7vSy0g9+xQRwjCaqb3jaYFyFratq2eCDlo7MM++MR0wGN2RIFSopYBAI5Onl
         5xyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729502242; x=1730107042;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L1h1ZxH2zfKDXMJFGr7FqjuquR8vJBZMiFARTAc1c60=;
        b=LTyk1IUEE8X/ZayS1m1r02gIjVgS4m7LmYUbuRuHfua0zUMOFdAzAG1E7PEuKsHYTf
         xxybnf0ZJP49tn9IMQUmzN1zCh5PrJcF/ACLsPuCjbR6GSfnmllQvM2KbSIWoGcwJZgB
         1PvMV38v+zOhdADY/L9yVwSSMtRXB2qfhuHtPzE1VJDmyG4TCFM2dAL9Nnn2gk7SHh6q
         weA1a4iRorXa04QjiJvQP6U0RkbA91moMSE+hOG4U9G5nAnojEPv9xBKh9Iq3prJ78l8
         5abejAVpo/hF8xYd1gyqPziCFgLj9NnMVEAdA1YevNzkMfkH+WXOJoEtiCH7A2gfd0N/
         Q3Zw==
X-Forwarded-Encrypted: i=1; AJvYcCUtf+xlbns05PYo1pQiI+ZVmT+uyM7mVSAe5VueZxtVENZd3VfOPAxCjzWFJgQWTVot02VaE+NwLnE=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxib7gRbDIm1gCb0vW/e9YVvjxQs+HEMGvluExysoVObJSlBkEo
	xhGdn+Ys8UkF5T/dh7EqSp29I9AzZosaaBBon2bb3vFSLvUVJ7uFH7st1pbPZwY=
X-Google-Smtp-Source: AGHT+IHhfmCxQTlXb6v9PcWrzQ+IR9TV4+36ukTmYh4+fz+XjFLWPJsl658OnTwNgOhjDqryazYOwQ==
X-Received: by 2002:a05:600c:3d9b:b0:431:40ca:ce6e with SMTP id 5b1f17b1804b1-431616a0986mr76272375e9.31.1729502242054;
        Mon, 21 Oct 2024 02:17:22 -0700 (PDT)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f5cc57esm49951845e9.48.2024.10.21.02.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 02:17:21 -0700 (PDT)
Date: Mon, 21 Oct 2024 12:17:19 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix
 X1E80100 resets entries
Message-ID: <ZxYcHyyRP4w7f/dM@linaro.org>
References: <20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org>
 <ZxYDwAUNV5Jhar4I@hovoldconsulting.com>
 <ZxYWiwMzmU6wneu/@linaro.org>
 <ZxYYCvwTn5V2cw3m@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZxYYCvwTn5V2cw3m@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_021723_896703_3F5DD9C8 
X-CRM114-Status: GOOD (  22.05  )
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

On 24-10-21 10:59:54, Johan Hovold wrote:
> On Mon, Oct 21, 2024 at 11:53:31AM +0300, Abel Vesa wrote:
> > On 24-10-21 09:33:20, Johan Hovold wrote:
> > > On Fri, Oct 18, 2024 at 04:37:36PM +0300, Abel Vesa wrote:
> > > > The PCIe 6a PHY on X1E80100 uses both resets in 4-lanes mode as well.
> > > 
> > > Again, this is a bit misleading as PCIe6a is using the
> > > 'qcom,x1e80100-qmp-gen4x4-pcie-phy' compatible in both 4-lane and 2-lane
> > > mode even if the original dtsi got this wrong.
> > 
> > But the lane config within the phy driver differs based on the
> > compatible.
> 
> No, it differs based on the value of the TCSR register.

Yep, realized that now. Thanks for confirming.

> 
> > > PCIe6b will be using 'qcom,x1e80100-qmp-gen4x2-pcie-phy' as that one is
> > > a 2-lane PHY.
> > 
> > Wouldn't the PCIe6a also have to switch to gen4x2 compatible on a board
> > where PCIe6b is used?
> 
> Nope, it stays the same (e.g. as the hardware block is the same).
> 
> > > Perhaps you can rephrase this so that it doesn't sound like you are
> > > using compatibles to configure PCIe6a?
> > 
> > But currently we do configure PCIe6a based on compatibles.
> > 
> > What am I missing ?
> 
> No, as we've discussed in multiple threads already:
> 
> 	https://lore.kernel.org/all/ZwPDxd9JJbgDeJTi@hovoldconsulting.com/	
> 	https://lore.kernel.org/lkml/ZtG2dUVkdwBpBbix@hovoldconsulting.com/
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
