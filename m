Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 032A6C531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 07:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bwUW3lk9PhxaFzJE9iswQdhk4VMciXpyQWy16s4CEE=; b=EytsxxHTTMQP2b
	srpkxtFNtKBbUORU0CRw7En7U9Y9HTUKX3bqjPU+Q1in8u8DPAXgzmxBMDZQaMwq38atHh9JVUh4m
	tIqWeTrMSf8rkFIWU4dhFZV5wyje+T+8Yt79H1vhfVucBRiUh9/TX/nWzBP/C/ZxB6Ewq4uoITycU
	OEHZBdyWC93bECvc1BlQLb+Jz0ums0ztxQnhcuYp5sbHjTgecxAe4+PPFWny8WZk50yk1p7ZBnWuX
	TM4YKg8lW3deOh9wd98WXYwEWDhUzPLKhWRTvu6fyfAGewsfr5obtiZ7aeJ6MwQ55dtpvnCy2LsyP
	qRyLcczPY5RJUZnbU8YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFUW-000000025PM-2xry;
	Mon, 27 Jul 2026 07:11:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFUV-000000025Nz-3Gg4
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 07:11:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 44AC5601ED;
	Mon, 27 Jul 2026 07:11:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDBA11F00A3A;
	Mon, 27 Jul 2026 07:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785136270;
	bh=IoAulvL2ymot7MCIcP9KQvs60IpuTe+QIH09+vO/zqk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QAkAakP9C5+NU1EqDCV8N/ffmU/76Pk58xm4a3aCsUTdNBbZPrNZ5H9gof3kgoddF
	 KDXaecE1wL7N49c3vfaiFo78eVJ4ZhyiM+3h9V5ZipR1JizEwK5rfP/edwgy4h5Oqj
	 g2fo+v/ZymtRod34kJZb2eITiwmSSH03RXuAej7gHekjBjaNSbKPCWho1sIvP6lGfy
	 6QobSiPobsrftocLzwAj0kKh112QmdKUeObswbRDxBwYYwwoxVw7dQpF7T2j6sV06z
	 LDVsWKBIPqVQ8YXeq9FEf/LmnaTtetjp8EaUhmhrBLFHLTJvrYhF1ijRgJPFH+MWcK
	 HlQ/NyXzITmEw==
Date: Mon, 27 Jul 2026 09:11:05 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v5 1/5] dt-bindings: phy: Add PHY_TYPE_EUSB2 definition
Message-ID: <20260727-convivial-capuchin-of-upgrade-a0ddfb@quoll>
References: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
 <20260723-eusb2-int-handling-v5-v5-1-f32ea6c1a318@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-eusb2-int-handling-v5-v5-1-f32ea6c1a318@oss.qualcomm.com>
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

On Thu, Jul 23, 2026 at 04:09:04PM +0530, Krishna Kurapati wrote:
> Add definition for EUSB2 phy type.

And what is EUSB2 and how does it differ from USB2 which is already
there? I see that USB org defined a standard for such phy, but a very
quick googling suggests difference is only in the voltage, so not a
different type. At the end, this is still a USB2 phy, no?

There might be more differences and that's why you have entire commit
msg instead of repeating the subject and diff.

Basically in all three places - subject, commit msg and diff - you say
the same obvious thing.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
