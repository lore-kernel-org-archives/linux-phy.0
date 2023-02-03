Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4BBBC61DA4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 13:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcX4PiOj/umxEsk2tiMrIzlB5IZV9pULnBu19mnNje4=; b=MSadROqUoVSVFC
	t9eUVyB0EB38k/dRIGU47FKWYEjqltPU+lCMy3sJGZXSTFSM+XzMsE1NaWz0ylkTAGTllcNIiYHUR
	RKn6om/9RiPJ2pxLuWKYfyx8ehB8Amiue1hHq3Y6P5vy6edkpurKRqB9LO957PpDMK0BAYoeFLx9U
	d5F3vqybdjv1txRVzBtcqWKUuMbUzYzke/if4YPFq5WyzfRKKnAomC95c6Rl6ZNpe6PoE7/bK3WZQ
	YY4mudGSfwgefhA0OMUZXCZ0fPjeT6fmwR8Fl0C7ONmk449tcrgkH8bbcuv0xL601NgBhjVs0VxXC
	hocmOq1r2G6YXjPtwZpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNwVW-002Aen-Oj; Fri, 03 Feb 2023 13:53:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNwKC-00277X-Jt; Fri, 03 Feb 2023 13:41:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A547B61ED2;
	Fri,  3 Feb 2023 13:41:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A094C433EF;
	Fri,  3 Feb 2023 13:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675431715;
	bh=BqaOPD7dtW+RNHVp4mgKLBVQpvvG60YANreOlI0gJxg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JEL3ms4aky4mGro9nclf+YSpo4wIBk2JCpPYcDAbY4baq08IBt7okTWrLo02yxAtf
	 l8PXET00rxRHm6oaCxfObVJ5uLqAoaRxbKU3ZQps/CzUfsyqHq4XhPuVATv77/4WVu
	 86WymKtbblho1p/fJirBQzeZTNAebrVSmfhhRQnAVPbz69RgrMEYOI5KiRAgCui1TG
	 Fl8I9NLKPK1NMXgqh9P6F2jj9/SegxLDRayWKzQT99FTFqwKNd4ncAGbKZ+AGtc6Gp
	 V8A4rMFRXIa5hvV20m+htcxp5J/c5WyWPcS+DnuG+FNsXcTSoamonJmWzMXG0PGMgy
	 iSQAXs31ggHdQ==
Date: Fri, 3 Feb 2023 19:11:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, replicant@osuosl.org,
	phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	Martin =?iso-8859-1?Q?J=FCcker?= <martin.juecker@gmail.com>,
	Henrik Grimler <henrik@grimler.se>,
	Chanwoo Choi <cw00.choi@samsung.com>
Subject: Re: [PATCH 4/8] phy: samsung,dp-video-phy: deprecate syscon phandle
Message-ID: <Y90PHhuszch7wcx9@matsya>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
 <20230127194057.186458-5-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230127194057.186458-5-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_054156_723579_BFA205DE 
X-CRM114-Status: UNSURE (   7.17  )
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

On 27-01-23, 20:40, Krzysztof Kozlowski wrote:
> The DisplayPort phy is actually part of the Power Management Unit system
> controller, thus it should be its child, instead of sibling node with
> syscon phandle.

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
