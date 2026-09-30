Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E34A1CA5FBA
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 10:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/jIq6cw3Ps9ppQpBu5CmOB1ER9Qcv8Q4vjEEbseBM0=; b=G45vfvR/37rzDO
	wO3LkMtPqgRWtr5PwXk8DMPG6J9ZXCPRVk4oXaEnugKdPmoSME9+TDZUR0LKa+NgOAtRBdvRX30qh
	dvwYm0v+XTSZVqikDcFRZmU4MXOpVhnNaearHbFrdZjnQWbX3OLZG7gEe9d2jU6UvBJkX7/kcTvaI
	5fEGEgk3eAsrwhI5/ELiJ4q2YDYVWUy6wSzoNUe8PDOCF0H8xP/UyySjBnbNWHcq/poyVFPowqRJr
	+W+ZVFl56BbqXeRaMLYfQL04ekg3E70SmIqYUbIfETjqo+ECjPQDqxZoR1QP63uaFbGbZwX+iv1kR
	2MGZmJXaDnJeHn+dwYuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBreD-00000005lmO-2f7o;
	Wed, 30 Sep 2026 10:34:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBreC-00000005lm6-0mqk
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 10:34:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B441942E92;
	Wed, 30 Sep 2026 10:34:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67A671F000FF;
	Wed, 30 Sep 2026 10:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790764487;
	bh=MK828ISuJkI15uMct+0uQ/hrOR+sjobVw+aOebqILII=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Eqs1P5Zmp+e2oKfeptfWqWOrk9J3CdUnv66gyurS1ab3Fj5rN7RS32nv2KBHVqWI9
	 4mYPESjJN88bxndW2SBj9ZOO4Lfl1nhC7vwl7CxW1gUHobwlTD0ygRe3ba3jwS9HZD
	 thHJZMH0XWdfk0xS1Lquu6E2xIZcxznpvrr2rxq83OOC564NEDk06ttT9kKcLCTnlW
	 MO36t3qLjaNtthl0Y3m/WgcH3hLR81HVo8qvH6V9vnFiaZd4O8DGUShjO39wU1g3/v
	 Yp6rmtjGEKwTNZhHcN4zo8bSYhyLJ+XfU9ytYCrZi0Bxz4+X/EZ/9DZRXynedjMNBi
	 5exqFF9ECrJYQ==
Date: Wed, 30 Sep 2026 12:34:43 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org, 
	linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com, 
	Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Subject: Re: [PATCH v17 02/11] media: dt-bindings: Add CAMSS device for
 Kaanapali
Message-ID: <20260930-woodoo-crayfish-of-renovation-d6d343@quoll>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
 <20260928-kaanapali-camss-v17-2-dcf3fd37f76c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260928-kaanapali-camss-v17-2-dcf3fd37f76c@oss.qualcomm.com>
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

On Mon, Sep 28, 2026 at 11:00:28PM -0700, Hangxiang Ma wrote:
> Add bindings for Camera Subsystem (CAMSS) on the Qualcomm Kaanapali
> platform.
> 
> The Kaanapali platform provides:
> - 6 x CSIPHY (CSI Physical Layer)
> - 3 x TPG (Test Pattern Generator)
> - 3 x CSID (CSI Decoder)
> - 2 x CSID Lite
> - 3 x VFE (Video Front End), 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Feedback from Sashiko looks reasonable and I do not see it being
responded to. Dropping from DT Patchwork.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
