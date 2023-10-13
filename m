Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10B31C41513
	for <linux-phy@archiver.kernel.org>; Fri, 13 Oct 2023 10:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdUdNvFPxr1RWDH0QahYXAleh1hOO5ZVE7gAAPvLkWI=; b=JKrILpbxsV9eUD
	19W68K3lLKf1BjEwx720wPTavZtYYZHKzowrQyih3V2U11fYkFl09Ssxn1QNBeGA+IFuuaN+UueN6
	jv5i5Oyr7DDivqvXLteXb7B5FpK7pzUanvQM7rH2GURamjx3xANa5zuG0ZOJqJItSd5AQzNM/CLKP
	CHXHv2jDa0jOgZ5P441VbcLDuYS0DpZA1o5IqOwxIbJNW1ZweUeCTL8yh6eg+NiMG1CZHGdo73UWJ
	4XR+GG733UupHtaWzRoAg/0YzY5oQ1R3YEvYIFVFdV7o8ty/3AI+qYMbKCjnBgnEadhvjBw+AQTj6
	Xl1pCDRL7y4/DYLyq1Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFe0-003E9f-2S;
	Fri, 13 Oct 2023 10:43:48 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrFdx-003E8K-2p;
	Fri, 13 Oct 2023 10:43:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 492E9B82A39;
	Fri, 13 Oct 2023 10:43:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2ECCC433C7;
	Fri, 13 Oct 2023 10:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697193823;
	bh=VWAGS5bqi44dAk1bOrEDdGkpcvk+RhQ/wntAJMfz8+I=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=RE3JjP1/8H9sDG9/u6gs7yMJDy0tQPrWtPf/YiAAUbOktrbBKm+UHzTAwSHq3vbna
	 GvvxvV4rRv/xMVoW1M5wqRX/8NMC40gKbJy2Nh7hVD84D9/h+lTD6DYwXZXJzy5oIv
	 xTnFd32rr+ZmCKfAatVxH61tIs9QOq3F24xf2pdO+Yod64DC5SMNip5qirMBW+XCln
	 BFw1U28P1ahuYvwD0bsSt3DnJrtN7ThUb06eOq5SdLJc4zlG27BH+Z638Dt40J7/FD
	 DpFka2Vs8UQf/RVOs8YqisjsvakFREBDiN1M8TO/cphCVrUKoKZ4uqCbAUh6hZVxn9
	 x7al7/jnVk0Jg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev
In-Reply-To: <0bc81612171baaa6d5dff58c8e009debc03e1ba8.1693735840.git.christophe.jaillet@wanadoo.fr>
References: <0bc81612171baaa6d5dff58c8e009debc03e1ba8.1693735840.git.christophe.jaillet@wanadoo.fr>
Subject: Re: [PATCH] phy: sun4i-usb: Fix a W=1 compilation failure
Message-Id: <169719382030.165658.16055633686751767855.b4-ty@kernel.org>
Date: Fri, 13 Oct 2023 16:13:40 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_034346_060331_D38A6CC5 
X-CRM114-Status: UNSURE (   4.93  )
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

Ck9uIFN1biwgMDMgU2VwIDIwMjMgMTI6MTE6MDYgKzAyMDAsIENocmlzdG9waGUgSkFJTExFVCB3
cm90ZToKPiBXaXRoIGdjYyAxMi4zLjAsIHdoZW4gdGhpcyBmaWxlIGlzIGJ1aWx0LCB3ZSBnZXQg
ZXJyb3JzIHN1Y2ggYXM6Cj4gCj4gZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2Iu
YzogSW4gZnVuY3Rpb24g4oCYc3VuNGlfdXNiX3BoeV9wcm9iZeKAmToKPiBkcml2ZXJzL3BoeS9h
bGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jOjc5MDo1MjogZXJyb3I6IOKAmF92YnVz4oCZIGRpcmVj
dGl2ZSBvdXRwdXQgbWF5IGJlIHRydW5jYXRlZCB3cml0aW5nIDUgYnl0ZXMgaW50byBhIHJlZ2lv
biBvZiBzaXplIGJldHdlZW4gMiBhbmQgMTIgWy1XZXJyb3I9Zm9ybWF0LXRydW5jYXRpb249XQo+
ICAgNzkwIHwgICAgICAgICAgICAgICAgIHNucHJpbnRmKG5hbWUsIHNpemVvZihuYW1lKSwgInVz
YiVkX3ZidXMiLCBpKTsKPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIF5+fn5+Cj4gZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40
aS11c2IuYzo3OTA6MTc6IG5vdGU6IOKAmHNucHJpbnRm4oCZIG91dHB1dCBiZXR3ZWVuIDEwIGFu
ZCAyMCBieXRlcyBpbnRvIGEgZGVzdGluYXRpb24gb2Ygc2l6ZSAxNgo+ICAgNzkwIHwgICAgICAg
ICAgICAgICAgIHNucHJpbnRmKG5hbWUsIHNpemVvZihuYW1lKSwgInVzYiVkX3ZidXMiLCBpKTsK
PiAgICAgICB8ICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn4KPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvMV0gcGh5OiBz
dW40aS11c2I6IEZpeCBhIFc9MSBjb21waWxhdGlvbiBmYWlsdXJlCiAgICAgIGNvbW1pdDogOWUz
NGFiYzdhYmZhYzc4MWRmOTA5ODkxYzhkNTM3ODFmNjA3MTA1ZAoKQmVzdCByZWdhcmRzLAotLSAK
flZpbm9kCgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
