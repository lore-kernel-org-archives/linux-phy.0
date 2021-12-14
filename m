Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFEAAC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 23:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rSRXS8sPyEtpBOI49/blfsFhUACfUdJkPCUuaEC/0h4=; b=kmi+T1dxJAVS64
	LfIeEp32AGnotp2fTMAV126vKL+DAzOH32V1s0RJOvUw/pdJ7VKLZ/+jVqpwODIOi0oLlMCkGNfIt
	ppFmMErU0ft0G+gINbMxG9bO5YdU7mvwHKSwwh8mr49iQ9bdro8eZuRqfrGmqazUBybAlLO/tNZra
	zeDZmga6WtdgldMoFQ96166NtysE/KVv5xNt0O7RK8f5QtuDG8u5yG/+W4siSzlruKf2HUMPNtDJ0
	kr9FR0hjbNWU96LZT9y6ouKacsIMZP4RxCKyc0mWQFm0CzS9/Z4IN9noEKzNqk1pvTxMFI2qDWk5F
	4J3KHYVghD9R1O33X9Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxHJk-00G1qa-8m; Tue, 14 Dec 2021 23:34:44 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxHJh-00G1pc-LE
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 23:34:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 9F129B81D7B;
 Tue, 14 Dec 2021 23:34:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19F0FC34600;
 Tue, 14 Dec 2021 23:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639524878;
 bh=wI9nmY3mEtt26cxtE+Zt3H6P52A5LLMVvJbx7VbsnPo=;
 h=From:To:Cc:Subject:Date:From;
 b=tUzNWvSqH6XSpWLgLz+ds+tDyoHkNSO4Cnza27m6c4bDkNKxDYgO5b4/pLA7dTFFr
 ZOlOSseIte9DuIiK/thRGiTmtwrW8dlDKxUqN3X5fcmx7YuGSLOdUh8FFWqjKhT+6C
 BMlwwVhdRj/DmvnsK9CONsSitqtlWHE7mmD8GRz70YXbl+YPUcI1w2AWmMF+YE48Pd
 sc17FfVdLFUm8WjtTfpr6SvbExOXdUNhujjMxjCZ7I2jP08VB5Je1faSfljR+ATklU
 /pE4ZakE0O+GpzyhZKlztOO0mrvpwT1RBbSBoOzkcS5K+FdSUKzYda31MAkSSrMeyy
 dN9vYMAbF9shA==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>,
 Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH devicetree 0/2] Common PHY to YAML + tx-amplitude property
Date: Wed, 15 Dec 2021 00:34:30 +0100
Message-Id: <20211214233432.22580-1-kabel@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_153441_886178_CAACBDFF 
X-CRM114-Status: UNSURE (   6.92  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhpcyBjb252ZXJ0cyBjb21tb24gUEhZIGJpbmRpbmcgdG8gWUFNTCBhbmQgYWRkcyBwcm9wZXJ0
eSBmb3IKc3BlY2lmeWluZyBQSFkgdHJhbnNtaXQgYW1wbGl0dWRlLgoKTWFyZWsgQmVow7puICgy
KToKICBkdC1iaW5kaW5nczogcGh5OiBDb252ZXJ0IGdlbmVyaWMgUEhZIHByb3ZpZGVyIGJpbmRp
bmcgdG8gWUFNTAogIGR0LWJpbmRpbmdzOiBwaHk6IEFkZCBgdHgtYW1wbGl0dWRlLW1pY3Jvdm9s
dGAgcHJvcGVydHkgYmluZGluZwoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktYmlu
ZGluZ3MudHh0ICB8IDczICstLS0tLS0tLS0tLS0tLS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcGh5LnlhbWwgICAgICAgICAgfCA4MSArKysrKysrKysrKysrKysrKysrCiAyIGZpbGVz
IGNoYW5nZWQsIDgyIGluc2VydGlvbnMoKyksIDcyIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUg
MTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LnlhbWwKCi0t
IAoyLjMyLjAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
