Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B7B7CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 16:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ynLmlYLK4W62+sACqED0VWgtRrkdPATxYIA7zWaJqFk=; b=UjFIm3MJ7iCz4D
	kWqLWkYTXCzTAt6dmioD9WF82AyH1OszV8vaNsggoTasrI59cwlBRLw7gqI3bl/j0k6lGTpwQdQAY
	+rI5hOMhKFYQ/UjKNzAVUpMuiKXgnHZgXXo+gC93Mkl4P11IYgg2Yqg8iDPlwqvfW/O4CtPDs3WbY
	wIIIm02M87H3n6r/lUn233hVbHttj5bB3mAffXKeB+yt/DT7uoVEvbjfUEARUhbIT5y+LI9ESRPs+
	9K/1naH/dvfC3VvOJZN6aGNT6M4ydyxa7+Xr+7GWThaoZdAdVasm53n090BpG7xZjP59LQdqs6bHJ
	mtMy6dv5W7BWME+Tm5kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNve3-00000008tzn-2ylb;
	Fri, 15 May 2026 16:44:15 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNve0-00000008tyM-1igm
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 16:44:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=di4WxEwImvWxYCM4Z6mGnsS0K4LS8j6Oo7Kf+kLHwak=; b=RQ
	70Fcs2BzqVStTSQZDX3X3ibiZhzuwKnrpTO7FgzgJyoMcCYMnb/I2rrmrAX6eMqKsiBqSTEBbMWdI
	XKX9XOBWLJi7JLC5FVnzbVMlN7Y+ezFY8R9CwB77iIBv3iHkdB0ZDl3Y1n0gbaMBjW2nOFYUcm/Sl
	JSC8V7KepvQy6C0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wNvdt-0035ga-Et; Fri, 15 May 2026 18:44:05 +0200
Date: Fri, 15 May 2026 18:44:05 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Petr Wozniak <petr.wozniak@gmail.com>
Cc: netdev@vger.kernel.org, bjorn@mork.no, linux-phy@lists.infradead.org
Subject: Re: [PATCH] net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in
 mdio-i2c
Message-ID: <32b1d434-7286-491e-9702-7816b0dd3700@lunn.ch>
References: <20260515161834.23628-1-petr.wozniak@gmail.com>
 <20260515162232.23758-1-petr.wozniak@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260515162232.23758-1-petr.wozniak@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_094412_448645_ABCB34E4 
X-CRM114-Status: UNSURE (   5.42  )
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

T24gRnJpLCBNYXkgMTUsIDIwMjYgYXQgMDY6MjI6MzJQTSArMDIwMCwgUGV0ciBXb3puaWFrIHdy
b3RlOgo+IEkgcmVhbGlzZSBJIHNlbnQgdjIgd2l0aG91dCB0ZXN0aW5nIGl0IG9uIGhhcmR3YXJl
IGZpcnN0IOKAlCBhcG9sb2dpZXMuCj4gSSB3aWxsIHRlc3QgYW5kIGZvbGxvdyB1cCB3aXRoIGEg
djMgd2l0aCBUZXN0ZWQtYnkgb25jZSB2ZXJpZmllZC4KClBsZWFzZSB0YWtlIGEgcmVhZCBvZgoK
aHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvcHJvY2Vzcy9tYWludGFpbmVy
LW5ldGRldi5odG1sCmh0dHBzOi8vZG9jcy5rZXJuZWwub3JnL3Byb2Nlc3Mvc3VibWl0dGluZy1w
YXRjaGVzLmh0bWwKCllvdSBuZWVkIHRvIGluY2x1ZGUgYSB2ZXJzaW9uIG51bWJlciBpbiB0aGUg
U3ViamVjdCBsaW5lLCBhbmQgaW5kaWNhdGUKd2hpY2ggdHJlZSB0aGlzIHBhdGNoIGlzIGZvci4K
CkFsc28sIHBsZWFzZSBzdGFydCBhIG5ldyB0aHJlYWQgZm9yIGV2ZXJ5IHZlcnNpb24gb2YgdGhl
IHBhdGNoLgoKICAgICAgQW5kcmV3CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
