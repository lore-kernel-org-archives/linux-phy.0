Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC24AD0E6D1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 08:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9CmZL2SCQGwzKshfauAWcUHn8NwDjZM6tcvdNKas58=; b=ssADCv1Ufpyy7/
	ACYCwJQ86SazWho1c1DqwhA7k8RYYg5goiaA4aoalSVs+zY13mY+5x5zbyjz0km47Xuy/UZWZEAvP
	UAUXNRMJLGK6kDVa+V1qzR/0+efmEeboloUsyLjhD9aBTGp3Ju6FYqubxnT9HsHhhTYPb+n18Fl9Q
	0mygxSUxV0qw14O7wIhVqXtFoXqnjSWStTltV1HzWVl/FfX8Q4v9nP21unCD/EP0WyXvZJjlc1eb8
	aiVl/lAgNLt25egKFASe2DO85mYrWyGuBSlEB9klYFx/1/72tHUZ6uRztnGkTfZ/vGW2NYRAMdj6e
	fDwmdXsAchFS3tKftEkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oAW-00000006cqn-2QHG;
	Mon, 21 Oct 2024 08:53:40 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oAS-00000006cpe-1ypT
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 08:53:37 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-37d808ae924so2885377f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 01:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729500814; x=1730105614; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pf37m7cZLJ8ue3Aeo/JFmWT3QjQLdbR4ZMc5/ugeu0M=;
        b=lbyDROOc8cxdR2witQ8STWYW32qXdvcQmLV6R76nD/po2RmhdEtxmogrbUijAql2vj
         1jHNVcWYnORtTkf8wlhn08zp5+iavsl35/FzMjgChp7HT5sZrxxfVHQwX5v39q6qHWBf
         zmwYZY7BmCnA3KfTnE7vpDFXU/usn6uTvVKXR8WOCZZO+bUsykuS+MkNyR1ZE5jV/h2/
         qITubP6pyrUUe9f6rDZehBg5rSNjdq9qrB/erLx0FZ1eL9nm00GmEko7nC0AzfibqO19
         MOlna3i4a/FNKYKoHEng9kwcTjhr3bYvpinIj25zIkE+jaQuqwwiHbTAXtpgiJs73MKL
         v2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729500814; x=1730105614;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pf37m7cZLJ8ue3Aeo/JFmWT3QjQLdbR4ZMc5/ugeu0M=;
        b=jO3ZRTGtfXBUmSSmjcQ8NCmmoKWlDaKNMP3iUJNyaQZ2VP9GraPRLxlilgFtLfxwwZ
         tK0OFJHz1UKIVrEETfHJzyjF2d4SsIVsALpo/I59sBKalKwBqubdP1WBtbcOKnULiwzy
         S0EpyA+9+RE/p1bjZ3cGB9Th0Ncf/o6nQKu17+RHstRR0BpmL7rARUe24ybG+yy2IZKo
         sbiijJImP5bd56Xkx+4YT3L+iS4e6DU3Q8dMgAW2Ci8Yo9o9WCEsel1rIlmAeZt/L+rk
         0P4x1qoJQ4eMlVc/m7AqOEsf5TKP4RvyilG8EUXQuc03uU35Js+UP6p6WGKmFQGbnNtd
         OchA==
X-Forwarded-Encrypted: i=1; AJvYcCVwe3qFioOzpJe4hNrH/pxa6LicMfV472ESZsVjEbU9YrSztyGIfBmtTEFZr8nTbbYzCdYqWBU6yvI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6B/XZ4OitSbkswsXx8c5RRXXvfM/Qz8TpQjgX4LJn8K68NkIZ
	VK11vGEPM9PVFbgEgmVYsB1k+p6bsh9bSTHgURy4aY7eZmY+suldc4kZRmgZZ8g=
X-Google-Smtp-Source: AGHT+IHdfM+MZfIvAPyq8JSLRmgoJmJCj002hwOgtEkA8kNRR6bBa5rbN1qa2LpdVOoDfrCgHzBTEg==
X-Received: by 2002:a5d:6e56:0:b0:37d:4aa5:eae5 with SMTP id ffacd0b85a97d-37eb48a0ea5mr5947426f8f.55.1729500813631;
        Mon, 21 Oct 2024 01:53:33 -0700 (PDT)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0b9433asm3760093f8f.80.2024.10.21.01.53.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 01:53:33 -0700 (PDT)
Date: Mon, 21 Oct 2024 11:53:31 +0300
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
Message-ID: <ZxYWiwMzmU6wneu/@linaro.org>
References: <20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org>
 <ZxYDwAUNV5Jhar4I@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZxYDwAUNV5Jhar4I@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_015336_534972_0CCD1A5A 
X-CRM114-Status: GOOD (  15.98  )
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

On 24-10-21 09:33:20, Johan Hovold wrote:
> On Fri, Oct 18, 2024 at 04:37:36PM +0300, Abel Vesa wrote:
> > The PCIe 6a PHY on X1E80100 uses both resets in 4-lanes mode as well.
> 
> Again, this is a bit misleading as PCIe6a is using the
> 'qcom,x1e80100-qmp-gen4x4-pcie-phy' compatible in both 4-lane and 2-lane
> mode even if the original dtsi got this wrong.

But the lane config within the phy driver differs based on the
compatible.

> 
> PCIe6b will be using 'qcom,x1e80100-qmp-gen4x2-pcie-phy' as that one is
> a 2-lane PHY.

Wouldn't the PCIe6a also have to switch to gen4x2 compatible on a board
where PCIe6b is used?

> 
> Perhaps you can rephrase this so that it doesn't sound like you are
> using compatibles to configure PCIe6a?

But currently we do configure PCIe6a based on compatibles.

What am I missing ?

> 
> > So fix the resets entries for it by adding the Gen4 4-lanes compatible
> > alongside the 2-lanes one.
> > 
> > Fixes: 0c5f4d23f776 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHY Gen4 x4")
> > Reported-by: kernel test robot <lkp@intel.com>
> > Closes: https://lore.kernel.org/oe-kbuild-all/202410182029.n2zPkuGx-lkp@intel.com/
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> 
> Patch itself looks good.
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
