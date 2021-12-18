Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14551C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 18 Dec 2021 05:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvfVytKHG4+ZrMI3BJpZFlUrKPJpEaiv4keWJOnF4YE=; b=czmqdj9Vba/d6+
	iL9NRm5VWlXX5xyZrE84YSURQQ54EwlmawVNHV7nzF8lUEPb3Fh7G6Iy3ATKoI/9G6Qn+/qJRXpIX
	Lm0MhzvOnZ5nwOrohTQnjJC6WRZxDK0ucoujmZGrDdCGqrMQ+cPwTV3yMsLN48C8FI9Isi/tT9J//
	2F+M6FUT7gfwuGirxEI/XbPmOb6TfMS/nlsQACw2l8rrlzdTwMHsPfS+RUkJKS3urtp4E9kfpHJfU
	hKgVh9rsa3PYBckXDr3V5pumQHf1IqqbXLk/I6DKKCHE8gn1MxgyL6t2+fJGa0AttCXeFFCQsULQ0
	LOfDgkBMseyKe45Q8NqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mySh6-00D39I-Gg; Sat, 18 Dec 2021 05:55:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mySh3-00D38u-TK
 for linux-phy@lists.infradead.org; Sat, 18 Dec 2021 05:55:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 48C7060BA5;
 Sat, 18 Dec 2021 05:55:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B033CC36AE1;
 Sat, 18 Dec 2021 05:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639806937;
 bh=v5lMUTTVXrRujiSgwDvsCvWFzj89EdQsaUBj3mhNDsg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Skkz77BE6gL9D1QFQEj1hi+1b2Bu8IJSpvPXhN/7CkIygUIS9JLkR9QiEpz2DPCMe
 m2k+QBKJisEBANYWauLTho7YlbSEA2CxldTJRX7FjIfkU22EWe7CXwvtbdo0cjAA8i
 +8PDTPFrcOy0enB4lGVvXVhG+rxagwPIAru7h8HWkYev0uhTY7dEkGGQRE/fClE4tl
 ZrQyZzTHvAfYyFqFFRdt1tGqN4nQRhSTnwqUPVbRg9MC/zII/JMgIIRYMwYWuQQ5gZ
 wY+dIZKxJuh3WQTm/AxQivemvZrhLJ04t+nBA04UwJhC9At8htMG7Lhb1jdKxxFhO4
 1VZeGi0lnZmZQ==
Date: Sat, 18 Dec 2021 11:25:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 02/10] dt-bindings: phy: qcom, qmp: Add SM8450 PCIe PHY
 bindings
Message-ID: <Yb131AmFuLn60mU9@matsya>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
 <20211214225846.2043361-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211214225846.2043361-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_215542_006156_BDEBE91D 
X-CRM114-Status: UNSURE (   7.88  )
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

On 15-12-21, 01:58, Dmitry Baryshkov wrote:
> There are two different PCIe PHYs on SM8450, one having one lane and
> another with two lanes. Add DT bindings for the first one. Support for
> second PCIe host and PHY will be submitted separately.

Applied to phy-next, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
