Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 419D6C54FD2
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 10:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMSlAgXF/HL/rBGiUx8t3VliuBmllJWR6AoWX3npaWE=; b=u/XSE+LzVIcImL
	JuGUBbTJYmBqh8IFw9ax0JjFo3I0iaIC/MFfMX79lbb0RZAJGAqHLqV9LtD4aGcuUSd44psulG/mu
	Fi74+tA+9J1qkFFdV8ba9ZbgieMxTSBxzPp/enXlMpzO4kDhUwgobrDhzlnaZ+RyPqY6G9eF4YRqw
	zWoJE1SPhc4ROlau4S/6FXHPpvrLxo8mHT9bY43935ipV2qFpB5veXQwqarlheempOTtRx/B5XMqi
	gUMNQcNG3IV58lgiiIwr8olkO2IEbM98ndhGOZWSlpsKINdBs7U0gjrl+7QZi8aEj2naCj8yfimvv
	NJ26iP0z2xZC8eUaMY7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpO2I-0000000ADZz-44Ms;
	Thu, 30 Jul 2026 10:30:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpO2H-0000000ADZX-2zS7
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 10:30:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 33B5042E6A;
	Thu, 30 Jul 2026 10:30:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A6B31F000E9;
	Thu, 30 Jul 2026 10:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785407445;
	bh=MeyYoFf8kISumnlY6DHOTN8orLf4SamT/FJQ5R3g65E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Kn1josYaw7uhzxrG9TLdDCuR878qBAH9h8KTAGV5xd4Zdl3Duus78cDBP7OUSOQNb
	 MvA7K7Fmm6/sRs4t9tf+bcMWnfA70r8A/+nLNqPdI+7M4t963cyqoMxNxVvxtrLunB
	 Qpu6s2CaJjiPRkwqIRZKAtveFa2xwl4PjvngJZZHzgBdtpG7x38AEM29dQpZkOIiYN
	 qEcJyeQjZ1h+rsBigcXNA1eezkU4XkyqPHcyCmO9iDIp35DmTnT8oWvw/Rs6+ndiFA
	 /RosiO7MxMcCKzdBxxWcYR6TGTGPxDxSf9C3FR1erjDEnOsehI1sBNs2qvHhM7duwf
	 HDOZxaB9rPCXw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 12/26] scsi: ufs: mediatek: Remove vendor kernel
 quirks cruft
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-scsi@vger.kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, olteanv@gmail.com, vkoul@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260730-mt8196-ufs-v10-12-bc5ecef202dc@collabora.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
 <20260730-mt8196-ufs-v10-12-bc5ecef202dc@collabora.com>
Date: Thu, 30 Jul 2026 10:30:44 +0000
Message-Id: <20260730103044.9A6B31F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBEYW5nbGluZyBwb2ludGVyIHRvIGBwaHlfZGV2YCBpbiBgdWZzX210a19wcm9iZSgp
YCBkdWUgdG8gcHJlbWF0dXJlIGBwdXRfZGV2aWNlKClgLgotLQoKLS0tIFBhdGNoIFsxMl06IFtQ
QVRDSCB2MTAgMTIvMjZdIHNjc2k6IHVmczogbWVkaWF0ZWs6IFJlbW92ZSB2ZW5kb3Iga2VybmVs
IHF1aXJrcyBjcnVmdCAtLS0KY29tbWl0IDZhMjE5Njg4Njk1MTBlYWEwZWVhMWI5ZjdiNjVlMzgy
MzU3YWU4MDkKQXV0aG9yOiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBj
b2xsYWJvcmEuY29tPgoKc2NzaTogdWZzOiBtZWRpYXRlazogUmVtb3ZlIHZlbmRvciBrZXJuZWwg
cXVpcmtzIGNydWZ0CgpCb3RoIHVmc19tdGtfdnJlZ19maXhfdmNjIGFuZCB1ZnNfbXRrX3ZyZWdf
Zml4X3ZjY3F4IGxvb2sgbGlrZSB0aGV5IGFyZQp2ZW5kb3Iga2VybmVsIGhhY2tzIHRvIHdvcmsg
YXJvdW5kIGV4aXN0aW5nIGRvd25zdHJlYW0gZGV2aWNlIHRyZWVzLgpNYWlubGluZSBkb2VzIG5v
dCBuZWVkIG9yIHdhbnQgdGhlbSwgc28gcmVtb3ZlIHRoZW0uCgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0
ZWsuYwo+IGluZGV4IGEyNzQ5ZTc5NTE0YzQuLmU1NTI3OTY5YTVlNjcgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+ICsrKyBiL2RyaXZlcnMvdWZzL2hvc3Qv
dWZzLW1lZGlhdGVrLmMKClsgLi4uIF0KCltTZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1
ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gsIGJ1dCBkb2VzIGRyb3BwaW5nIHRoZSBrb2JqZWN0
CnJlZmVyZW5jZSB0byBwaHlfZGV2IHdpdGggcHV0X2RldmljZSgpIGxlYXZlIGhvc3QtPnBoeV9k
ZXYgYXMgYSBkYW5nbGluZwpwb2ludGVyPwoKZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsu
Yzp1ZnNfbXRrX3Byb2JlKCkgewoJLi4uCgkJcG1fcnVudGltZV9zZXRfYWN0aXZlKHBoeV9kZXYp
OwoJCXBtX3J1bnRpbWVfZW5hYmxlKHBoeV9kZXYpOwoJCXBtX3J1bnRpbWVfZ2V0X3N5bmMocGh5
X2Rldik7CgoJCXB1dF9kZXZpY2UocGh5X2Rldik7CgkJZGV2X2luZm8oZGV2LCAicGh5cyBub2Rl
IGZvdW5kXG4iKTsKCS4uLgoJaWYgKHBoeV9ub2RlICYmIHBoeV9kZXYpIHsKCQlob3N0ID0gdWZz
aGNkX2dldF92YXJpYW50KGhiYSk7CgkJaG9zdC0+cGh5X2RldiA9IHBoeV9kZXY7Cgl9CgkuLi4K
fQoKSWYgdGhlIFBIWSBwbGF0Zm9ybSBkZXZpY2UgaXMgdW5yZWdpc3RlcmVkIChmb3IgZXhhbXBs
ZSwgdmlhIERUIG92ZXJsYXkgcmVtb3ZhbApvciBtYW51YWwgc3lzZnMgdW5iaW5kKSBiZXR3ZWVu
IHRoZSBVRlMgcHJvYmUgYW5kIHJ1bnRpbWUgUE0gdHJhbnNpdGlvbnMsCndvdWxkIGRlcmVmZXJl
bmNpbmcgdGhpcyBwb2ludGVyIGxhdGVyIGluIHVmc19tdGtfcnVudGltZV9zdXNwZW5kKCkgb3IK
dWZzX210a19ydW50aW1lX3Jlc3VtZSgpIGNhdXNlIGEgdXNlLWFmdGVyLWZyZWU/CgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzMw
LW10ODE5Ni11ZnMtdjEwLTAtYmM1ZWNlZjIwMmRjQGNvbGxhYm9yYS5jb20/cGFydD0xMgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
