Return-Path: <SRS0=Ei7n=NI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3894FC4338F
	for <linux-phy@archiver.kernel.org>; Tue, 17 Aug 2021 10:31:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 04092600CC
	for <linux-phy@archiver.kernel.org>; Tue, 17 Aug 2021 10:31:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 04092600CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTSQBUHF0uP8ITdwDfnwdkeEeFJ+B6ljHlfjYFudXtI=; b=k+wWqVLhp0ksll
	pWRDttHuNrmLTsRlR0AcfLfnlN+x2SNWcFzSRXyiU/gipNoCvnLWSqgrPrIAImFwBiPnVOO/fmdrI
	O05ChYIs2MDZmNFJZIk8YF/1cexS9WQyrRwOrZOrdyh7Ujh16lZ1gLxOD2UXfSDK0Yweto4fpZyX7
	YLx4Cr3cxmREu6K6/rKHmcfhAbkLt1O0POncAKV4aNL/luwZvR3QrpuHLUFtocu99x2V52HnUNHnm
	nOxgr0uWbn8bFOtHt7vLnygxEmIDEqt68DL7U3yj24vg5Zb8I3jU9Si5O6QEACnKG0huWt6jC9jcO
	XXqRVU2r2BBQT0b0DsSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFwNF-0028El-Dq; Tue, 17 Aug 2021 10:31:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFwMz-0028AJ-Ji; Tue, 17 Aug 2021 10:30:58 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id EA027600CC;
 Tue, 17 Aug 2021 10:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629196257;
 bh=BxxNEfEkon7WthJuxGlsYjRnS9m+9ksjcTGePwqMEgU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NuVPytyt0SZu3yHNad9pEQrINoIXaagtLFgVrlJwGS1mZxrBVnZNxLLrwNiQkKEn0
 4yoymzhT7NhUfeiq4ERTqojSUIfXjxSmS++U/ykel11QHLIYyvWgDZJs7yXmGcgg0c
 EMQyZ8nc5UWo3c67PlkKAe9cnw0RZTKyuJf5naGm95JKCg2eFej1C7TrGfMvwjB+At
 PW84oV393djGxTMWgFJMjQi5K5S/smp0F92ZR+W7j/fg4tPsWNYOvaV1wHZgYuiRbU
 WKEC+a7kmjkb2Q1btZ2cP0CRzwTYOC7kdr1M0YCRxfUTkshQET7lEY60ivJc/vT0f0
 Q0ZWZhkQX5jLw==
Date: Tue, 17 Aug 2021 16:00:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Matt Corallo <oc2udbzfd@mattcorallo.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Emiliano Ingrassia <ingrassia@epigenesys.com>,
 Brian Kim <brian.kim@hardkernel.com>
Subject: Re: [PATCHv3 5/6] phy: amlogic: meson8b-usb2: Power off the PHY by
 putting it into reset mode
Message-ID: <YRuP3D6EMlaKJOx7@matsya>
References: <20210817041548.1276-1-linux.amoon@gmail.com>
 <20210817041548.1276-6-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210817041548.1276-6-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_033057_702431_6CD405A7 
X-CRM114-Status: UNSURE (   4.13  )
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

On 17-08-21, 09:45, Anand Moon wrote:
> Power off the PHY by putting it into reset mode.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
