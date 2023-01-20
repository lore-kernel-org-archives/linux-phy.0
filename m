Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D7E6C54737
	for <linux-phy@archiver.kernel.org>; Fri, 20 Jan 2023 07:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYgNSueVxW1nC1rgehryjGnULJn9T8YszHDKf3aJCtI=; b=JJZeAYD5fwlx4u
	c/xYEOb/iR1MxbjOfVlhzPXKkTvmc0fvQN/g+yE1IyIPHJ1dC132qGzPEre9ViQO2FdwDi/YuZuRH
	wBnRdMRL2rxiy3F1JHiorE6Id2hEVknlHOKrjxiL79ZBkxnhwAfK0RfjxW/sciAI1GiIfMLJKQBCF
	q0C1TSX3I2cE2aytm/ffTVn6qYzR8mm+WbG7gCOD8WF1i4y+Nu9yCC10blqq9yF4GFx+8X9Oo/s+h
	NYlvRFv9y66dDTg6msO/Ew+H5UPof79aiSKR48yW1oSFUqs+ibYnz6afe++UOMhH5AezSWe14Yrkh
	+ETkKRUDb4RWPz7WRTmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIla4-008k2b-6M; Fri, 20 Jan 2023 07:12:56 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIla1-008k24-UY
	for linux-phy@lists.infradead.org; Fri, 20 Jan 2023 07:12:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9298BB81FB5;
	Fri, 20 Jan 2023 07:12:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 781F6C433D2;
	Fri, 20 Jan 2023 07:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674198771;
	bh=UsDA/WXXNha7D3X3zm4UCLPWxcyELkZ9SDumqg8hpLE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PS4AnRROOKLjgxLXubQPsnJZuVuMFSIwCaAv+ybwgIj3/XDtt/Yg/CiK7U6zIDXuJ
	 mj3Bu3vKONgS7GReATPBTfS9JxFKERIoSVW6M9BbmdJLBL08BqJ2Au+/o7JA5q9s87
	 eUlsouoYOMeqnvy9uIMyiZLQnUwkBDy1/VM78Q2PG9Q7m0DrWchHc+kRQqO4GX3Q12
	 qTVy9bDWOik3JzbcYX6fzDHz7kMfO169im0PT6f6SbrFY+j9TlftBzCYrWxN80viKG
	 3JHTkoboAdvpMtjhE2XCSlgWd+qm8ZnV13/C2+J4qdClAGh+VqoJuG7TjnVnxB3OtW
	 FfLDJVJ3ZbmmQ==
Date: Fri, 20 Jan 2023 12:42:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Wolfgang Grandegger <wg@grandegger.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 0/2] phy: Add support for NXP TJR1443 CAN Transceiver
Message-ID: <Y8o+7iuWgYGtZshM@matsya>
References: <cover.1674037830.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1674037830.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_231254_160894_7F7114FF 
X-CRM114-Status: GOOD (  10.53  )
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

On 18-01-23, 11:39, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> The NXP TJR1443 High-speed CAN transceiver with Sleep mode is a
> pin-compatible alternative for the TI TCAN1043.  Hence this patch series
> adds support for it to the existing TI TCAN1043 DT bindings and to the
> generic CAN Transceiver PHY driver.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
