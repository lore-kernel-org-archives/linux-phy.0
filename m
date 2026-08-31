Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF6E5C61DFD
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 23:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHG2a9/lfa1Z4uLaRZoYTk1DTaPYKsM4JDVCgOCPfQk=; b=Lh6UNqeV8cuY2c
	PI3O4SWU9XOTDzaU0xy4q//NWqBPXGYVC2bfPkcuGpMZHaKUZW74h0P+cAl64+eFoQfhORbg15/Ua
	Dj/3QZ5U4uOdqUsbUFamFlE25M84CSItrf6nAgxjIJ7BGpBZkDCKVd0XAZBmjj5AO7u1KRvwIDlgj
	bjLS929pRjOegHOJ0d7BKTkuS+/Hyfr/8PjAEBQjOJOhdyvnBt59q0uGzzLqvwYSsuDOPL3EE8NZK
	j3bHdADXmR3MI1gTt67ra6kVpfaB76xiLJiioYoI07ctD2+xaZqae6LNoqdhhZlqroGxtZaVCp3iZ
	2mOuBP4nxJ7eRo8LUoQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1B1L-0000000Acvb-1ShP;
	Mon, 31 Aug 2026 23:02:31 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1B1H-0000000AcvF-2yW6
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 23:02:29 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6a615ab11b5so329945a12.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 16:02:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788217346; cv=none;
        d=google.com; s=arc-20260327;
        b=AIqReLWO3K8spLObKRT4X3QFRUWzjA7Ws83uH+MqfgzvOsP319aXxqURr5uN2EcXZf
         8JXWa/dhwzYf8J7/KqE7fBwTrrTSP+HLxm0q+nS8Zrrp+c9MsmcLc5FRkG4V9xfPT2Ue
         su6MrlaONvSNbSo5vZvAf+DKOjomdlY626Axi2hGD8zBjZL9qTR291JWpK10o8HHCs2F
         JCYwiXKmPIsMLGiYuDq+9xFt+yV9z1zljgnE1B5rpaVr5+PeEpaETrqQ4pRGiqR5gPNK
         qmnx5jvyp3inLeatOBgPOGIjoovBRDJ0D+/BIAu07Zjmveoa/cJd3p8uuCWGQ8pXf0NH
         126g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QPDBNzw+KWCEMD9k4Xi8uOYkWevA+MR4K4kPjQL2HXg=;
        fh=xN4ihgTL0BIQ5m8J+KbrsBiPJthetm1JljoEugqNepk=;
        b=slbW5QQ1vOmEipBF3PC9qpwavTQCar7IHeZC+HRzhx1GHUvLWEr85FFJJTMou1lPuY
         hZX4NqcTCBG1Oolg+XHLiKZFSxZVCvdI3sYg59IaH2GjS+C9aVcKDEwlRW8klAOo2QCw
         9//JMn9x8e6OtLbR9VYxnuEoQh4oG+xVo0ufT/eXVWAGUXU9IcuC/xdBHsCJMRdUn6g4
         Mr3PFv6B+oj0Z0dUd+gLCt0BBTUMGpO1NzN5dxDc1KGSPvDaHYopAO4NYKJhrV8SGrIA
         5FrpUWuLFzlTciMY79tfnBrCF45eVyOHDoeuf3BJDsQLawye/u7Vh098Yh0eEJdQFOVK
         jG/Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788217346; x=1788822146; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=QPDBNzw+KWCEMD9k4Xi8uOYkWevA+MR4K4kPjQL2HXg=;
        b=iAXAQvDJ8E8cyq5cslC3nhcl5vAzrsNFhGZbBEsJ/A7QaC/ibB5TWl0os/BTWrdpZ7
         Q1iN4nZVsEZzmAU6g4kxv6dxloeYBsXF0dNVPL3Y4LTNEjCV9twv1Bpm22chLhSM6+zh
         UQFqXqewP9xUUy1rK1SqE9eg4cUGk6dga+52XXy/ls/nwsSEi8D9nzblHrVkgoWivDqF
         dOndxXubgZgjmeTu0L81g09ip2xxlSks2TYXwb2PcgwdqHfeZYbe4rYgutGqw4SIOoZc
         V3QgwdBtJ8ESJ/I/dPaFuWVtdxVikL8w7drkWZqaK6gYqyb+LQcpPvygkLqMR9/DcsCx
         snfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788217346; x=1788822146;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QPDBNzw+KWCEMD9k4Xi8uOYkWevA+MR4K4kPjQL2HXg=;
        b=EadikRrzhys/jznFYE9WlgVYBT4tG6su98y+CDGHz8mWuVpupJnAxFfijUBZkWa8yk
         33SJ5KS2BcBZn1fYqn3PKABmA6/ekwR8PsNdw9Ubjy1S9REO7DV0ZIPZEMRF+zsZltGb
         bY96CMA7zvO8SKt6Hon/yYwlJarWpIPZiLn6RGkFaHxBQDJ2C2w0N7NJI0pjlBUJtJG+
         EHVU5GRFOYfyn0ueuj7ZSFLzjgZGO1RBRvaHtQkhB57o0dewLiTMKkuCXjxx1VU1Gwq2
         8Bw83GlYxkNk+n0YL4bK6x0VA5gZwptGynamatNSrHbxyfmIOfP1BsXY02kv8j+6irfV
         UzzA==
X-Forwarded-Encrypted: i=1; AKwUvBzrvoasUyrm9jJnb+UNy2F5c+UB2x0YOqIKTM66LicufQ2gdSEUxJg6Yh5b5qSTszyJB+k4xaH47Fg=@lists.infradead.org
X-Gm-Message-State: AFuF++lp2toM3an3s0CwUXnun+7x5YirP48YvKCYq1ICBWpRekP+dnT1
	UbuJbUgan4hAGChhtBjm5ySBDgDL5yEv5U+vlRaaveNd6Mw0kSwgY99MDegpc4VKIDkwUNZO6Gr
	4dDpJzqmgonHV1dzE/j7TZVoryf6GFeA=
X-Gm-Gg: AYBFou2BUrHW9G1hFNccw1wkIZCQzqW4yO9sDi2QhHYkcoIHOM9VxdNEn5mZxvvm0r9
	82wC9PKe4qzk9CqULRAjXJ9/0qQrNFghOCSKGledSmf0wMCY1Zmx+LNYHnOYxB/DoooB4USyGJ0
	jwuSsUHPwngQLpAfK8EpGN2pIryd7Dog8+QyUXj8fkvJ3RAul3abCY3S/fCTtJVi3KVUP/Yf3oF
	1JQe76s6lXzkAfgrpmFHuahm/zzbmO2bEhRZYw+W9ck74r+o7y22dYDh1zjuZ+LrvZdPJykj2P4
	p8xX7OZrNLlaqD2TwV4yixZ9PA1hR4pY4uQ49vswCXT5+MSgoVcSDA5vAzGoHqGh5crcvSi14I1
	ucsE=
X-Received: by 2002:a05:6402:43c6:b0:6a0:d411:930d with SMTP id
 4fb4d7f45d1cf-6a60d36c8ddmr8084948a12.2.1788217345227; Mon, 31 Aug 2026
 16:02:25 -0700 (PDT)
MIME-Version: 1.0
References: <20260818-ti-am33-usb-v2-0-66fd44d66824@gmail.com>
 <20260818-ti-am33-usb-v2-3-66fd44d66824@gmail.com> <20260831134643.GA733140-robh@kernel.org>
In-Reply-To: <20260831134643.GA733140-robh@kernel.org>
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 1 Sep 2026 04:32:13 +0530
X-Gm-Features: AcwNN1X3HOOhqJKkqX2zS7vFMQd-QWtG1Ec31OOg1tzrgRf7iaa2sG06AC-hKII
Message-ID: <CAOWyW_4RpTD9zAmFDr41sFOj5LtRaGdad7M8QCvQNAQDtamYMA@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] ARM: dts: ti: am335x: Fix redundant interrupts
 property in USB nodes
To: Rob Herring <robh@kernel.org>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, Frank Li <Frank.Li@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrzej Siewior <bigeasy@linutronix.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Ravi B <ravibabu@ti.com>, 
	Kumar Gupta <ajay.gupta@ti.com>, Sergei Shtylyov <sshtylyov@ru.mvista.com>, dmaengine@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-omap@vger.kernel.org, goledhruva@gmail.com, m-chawdhry@ti.com, 
	daniel.baluta@gmail.com, simona.toaca@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_160227_767902_8DFA5734 
X-CRM114-Status: GOOD (  14.16  )
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

T24gTW9uLCBBdWcgMzEsIDIwMjYgYXQgNzoxNuKAr1BNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gVHVlLCBBdWcgMTgsIDIwMjYgYXQgMDc6NTg6NDVQTSArMDUz
MCwgQmhhcmdhdiBKb3NoaSB3cm90ZToKPiA+IFRoZSBhbTMzeHguZHRzaSBkZWZpbmVzIGEgc2lu
Z2xlIGludGVycnVwdHMgcHJvcGVydHkgZm9yIHRoZSBNVVNCIG5vZGVzLgo+ID4gU2V2ZXJhbCBi
b2FyZC1sZXZlbCBmaWxlcyBvdmVycmlkZSB0aGUgdXNiMCBub2RlIHRvIHVzZQo+ID4gaW50ZXJy
dXB0cy1leHRlbmRlZCBpbnN0ZWFkIHRvIGluY2x1ZGUgdmJ1cyBpbnRlcnJ1cHQuCj4gPgo+ID4g
U2luY2UgYm90aCBpbnRlcnJ1cHRzIGFuZCBpbnRlcnJ1cHRzLWV4dGVuZGVkIGNhbm5vdCBiZSB1
c2VkCj4gPiBzaW11bHRhbmVvdXNseSwgQWRkIC9kZWxldGUtcHJvcGVydHkvIGludGVycnVwdHMg
dG8gdGhlIG92ZXJyaWRpbmcKPiA+IG5vZGVzIHRvIHJlc29sdmUgdGhlIHNjaGVtYSB3YXJuaW5n
cy4KPgo+IEFjdHVhbGx5LCBib3RoIHNob3VsZCBiZSBhbGxvd2VkLiBJbiB0aGVvcnksIGFuIE9T
IHZlcnNpb24gbm90IHN1cHBvcnQKPiAnaW50ZXJydXB0cy1leHRlbmRlZCcgYW5kICdpbnRlcnJ1
cHRzJyBpcyBhbHNvIG5lZWRlZCBmb3IgY29tcGF0aWJpbGl0eS4KPiBUaG91Z2ggaW4gcmVhbGl0
eSwgd2UndmUgbm93IGhhZCAnaW50ZXJydXB0cy1leHRlbmRlZCcgZGVmaW5lZCBmb3IgYQo+IGxv
bmcgdGltZS4gSSdsbCBsb29rIGludG8gd2hhdCdzIGNhdXNpbmcgdGhpcyB3YXJuaW5nLgoKU3Vy
ZSB3aWxsIGRyb3AgdGhpcyBwYXRjaCBpbiB0aGUgbmV4dCB2ZXJzaW9uLiBJIGFsc28gb3BlbmVk
IHB1bGwgcmVxdWVzdCB0bwpkdC1zY2hlbWEgZml4aW5nIHRoaXMgd2FybmluZwpodHRwczovL2dp
dGh1Yi5jb20vZGV2aWNldHJlZS1vcmcvZHQtc2NoZW1hL3B1bGwvMjA2Cj4KQmVzdCBSZWdhcmRz
LApCaGFyZ2F2CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
