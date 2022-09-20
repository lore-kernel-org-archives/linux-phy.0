Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2A5AECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+NmwbGRyVRa/80OZO4n9k6EtTyksPFrJdTcD/KZ0iQ=; b=B2opxJqPyJ3+ao
	fjthmI8BQBvVGy7Q2/+BsdTJdtwjbZxPdsSoFewp79hnUIDjZlufZQbi9gRAMek/9QBXXHJqjPn/0
	zm30Q8SA90Heob0wewtJlAU2C7Jx2GTnaWxrHLiw3Cg50KX3zf8yKTxR0T2/ZMEdwGGY20Io2lwJ/
	xKjNRx7FZCM+xRnl6+A6Nq4klchKJlaCE/TxcXLjM0C4SrHC64GOXdNcV7doY7jD7I/ATbmM++w6D
	zYjCyvHOlfin/e1S1VDGwvXg8MAy/bkWJh9ip8C8rbIfqXClZvXTiYI/X3ub/40YLoQoHT5lXlnGz
	oCPfcfH9dN0tCy534GBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWKI-000qFZ-9j; Tue, 20 Sep 2022 06:01:46 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWKE-000qBB-5m
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 06:01:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 70A35B824B5;
	Tue, 20 Sep 2022 06:01:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67C40C433C1;
	Tue, 20 Sep 2022 06:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663653699;
	bh=WvR7It9VMuJcNob8/cw0k0P1gSUb9sVtuIxJNxL30tc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=je6NryNtkc/4bS3ORgiVNilAkLMKrVyDbeRpORrgwKlVwj9oP1PKIDqlaOvGNG3HQ
	 Da3T6h1AvCv80hCUQjKFx+hgo+l6ttud3BqCQ9Cu/+t5gVSJhsDOSzNt1dKZiYf7um
	 ReRmVdXb2c8FrLjw9+kkqFWNCuO+mUN7WqYB0pRRDLurMO9xfM+KQIYprEmZRXj8k7
	 61dBecW9PNtuP+v0LH/Sws+KTdzMEwchurvua8va1ONvD0whBGfcf1gPC8M2iM9Jv2
	 0yOul6pTNNgT1V+y1xA0J7QH1bkvbgViWc9IxALfFRNRIftYq0XTxPNkbKJos3D901
	 aQAAxHg+OPoUg==
Date: Tue, 20 Sep 2022 11:31:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 00/11] phy: qcom-qmp: more fixes and cleanups
Message-ID: <YylXP5LSUxFKkimB@matsya>
References: <20220916102340.11520-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220916102340.11520-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_230142_396220_B89914C0 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 16-09-22, 12:23, Johan Hovold wrote:
> Here's the next set of QMP PHY cleanups including some non-critical
> fixes of tiny memory leaks on probe deferral (I didn't add a stable tag
> for any of them on purpose).
> 
> Note that the UFS PHY driver does not use the pcs_misc region either
> currently, but I decided to leave the register mapping code in as,
> unlike for msm8996, the bindings do include this region.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
