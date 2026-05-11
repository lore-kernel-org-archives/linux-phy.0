Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15BB3CD37BE
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 13:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uxco9WgnGow16sjtp0DPgS/YgfMVn/MhAyG+2sukuss=; b=BihGyQwJ0g9NtN
	K2IqonZ0WO1JYh9lX90Fcz9lwstOijlYHQRLdzrmfF6mEPs0cXlqQThL+iIH84JEXQoxZV7QMuGAc
	8gAw1Gug2drTAEHMhliP3TpisgwjMQgb7kWR2isXUN52s+CYaPeTSJmQt9cWEW9vbIkh7YdoIXACq
	PCMs7oGzFxDUhJTFdrLWhSjIH1L8a4UsvKLh4HWV/rEu91Ihz1XsqNB70w/fZBg6cOaWwO0SaMXCJ
	TO7wn0Lneyfuth1VHxqgDQDr9RbThqx3Eu4hfLkLPoKlRDlvYUoAZhMN0ZyMuB9zb1GASjtlrTNFS
	qvaBISMk4fySWKN3HYnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8Q-0000000Dpru-2XYw;
	Mon, 11 May 2026 13:57:26 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMR8O-0000000DprA-3Ka5
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 13:57:25 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-67c4aaf76ecso6810926a12.3
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 06:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778507843; x=1779112643; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jKhdwsAy/86G+JOwXd2p+pdbXnbrja7bwh3PVXwh7m4=;
        b=MLw7rD5JFh2KGwW3L1VlF8ojabILLoSLmFwd0LqHOnP4kpvfRQ27pWQtmb9E40PS0F
         5uU92nEuhirL2uX18fZXS+GDB77u2coEz2rL7q+593ann76ORZj3yRg7ueftcnE+3SgM
         yfIv7KeC8cjJ/z2koesio2iwajA7KWjqQsJ78+u9Uj3WqUFMTQBKIcsQEktMyeOFD367
         DxiJR+5AD56Uxuo6Oa212pn61mfOfWLggIKNJpy5V0e0EncR5LAiLnK0eTMPLFi9yIsq
         PGpnDRuH0Hquqkl9IeaeIkWlok05mhD9Ny+yWQXp4cZcKab9MkZVHoVUF/UZxW4y65Rb
         QBrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778507843; x=1779112643;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jKhdwsAy/86G+JOwXd2p+pdbXnbrja7bwh3PVXwh7m4=;
        b=OeKmPyca2ILrGDvomQYvrb0mM/QipF4kRasO3vNEmvCL9pwQfHm3HgulFoWKSSuW5i
         ud1UjL4puqL6J3GLV8gQwezr6SLHqSYFkw7iOBFysREZHy6of+bEq0RKFBFnZ69TF3Sn
         nFvh4Fl3xgkQnzx3xX85smuhX470ackkx/bLLSfKzpRVqqA3+U3/Y16Tpkt4ajMckgBr
         RqbdxrVop2s+UZm8WXlAddFvcnVv/MRhvhjUWvJ8+LzQ3fWt9dscHDYOP2BUzqQutyTp
         Cwei+MYXONgbVINpYC6Cfwr33Ao4YEBQe4nNpKzavaFDzAER0MpjuoxI27gBU8MOhcFh
         fu4A==
X-Forwarded-Encrypted: i=1; AFNElJ/mn+UV+3Dl4zr3ASTqdeRoJaXa5B2KLMR3/mLCw0bHA+6c0s9LfUcEG92EoTB59g8JbL8rvwQYbSk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4I6mxRK7lz5Nt9kIkUzQ5WkL0VKfLXChgzXaRYuX7dTUcgJZw
	SSlhz9iA7GiWJa78KG/f0VmrI6wInQMFoLjjcQCH8sjjvn3q7UV/K1TZ
X-Gm-Gg: Acq92OFejEakAEWY/E8guQDPTpaDEgHYQXnqFqtd6WSUoleDYTR/6pP2uV0ucRYQo4q
	Ymk+nycsxqvnmc99tKuOJ3CYq20eGi1gpOVICSWc7qRg6bhirkveOpAn0EojhPSCAOc8+Mx6foV
	+76wRcFqhFzAXLZI+SFivRae+3SVyW+Pt3sGHYmcXGM0xA3TvM04Nja/jIzOliCftQhpCfYM8DA
	j54TFTj9Wrv0IhNWr5n0S+Kh+X89Ddb+tEh2gtTtvsGjBpLJ27Pg5Vl/py7zoChCjd7Q3dcAuWP
	qfNxax1+LrwmhrBMOAxdSiEc2C5df4N7552XsS0GObB+ZVZqAycxRGt8ANztNsrjlnpLHS4H9TW
	fr334Mb/cKAdMUBhgp7ahtc2BUYcryVRZx6HvChcurvc/1hmR+QKs+OxJ6Gz6VeEjl67pqXUsTf
	SNiNkToax+Fvec
X-Received: by 2002:a05:6402:278c:b0:67d:a63a:deb1 with SMTP id 4fb4d7f45d1cf-67da63adf40mr11744584a12.5.1778507842405;
        Mon, 11 May 2026 06:57:22 -0700 (PDT)
Received: from xeon ([188.163.112.56])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-67ef0b3b904sm3685357a12.1.2026.05.11.06.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 06:57:20 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Peter Chen <peter.chen@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v1 0/6] Add support for Infineon/Intel XMM6260 modem
Date: Mon, 11 May 2026 16:56:55 +0300
Message-ID: <20260511135703.62470-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_065724_853276_9180DE43 
X-CRM114-Status: GOOD (  14.30  )
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

VGhlIEluZmluZW9uL0ludGVsIFhNTTYyNjAgaXMgYSAzRy1mb2N1c2VkLCBzbGltIG1vZGVtIHBs
YXRmb3JtIGRlc2lnbmVkCmZvciBzbWFydHBob25lcywgZGF0YSBjYXJkcywgYW5kIE1hY2hpbmUt
dG8tTWFjaGluZSAoTTJNKSBhcHBsaWNhdGlvbnMuCgpUaGUgbW9kZW0gaXMgdHlwaWNhbGx5IGNv
bm5lY3RlZCB2aWEgdGhlIGFwcGxpY2F0aW9uIHByb2Nlc3NvcidzIFVTQiBsaW5lCmluIEhTSUMg
bW9kZS4gVG8gZnVuY3Rpb24gY29ycmVjdGx5LCB0aGUgbW9kZW0gbXVzdCBjb250cm9sIHRoaXMg
bGluZSwgYXMKaXQgcmVxdWlyZXMgcHJlY2lzZSB0aW1pbmcgdG8gaW5pdGlhdGUgb3IgZGUtaW5p
dGlhbGl6ZSB0aGUgVVNCIGNvbm5lY3Rpb24uClRoaXMgY29udHJvbCBpcyBuZWNlc3NhcnkgdG8g
c3VjY2Vzc2Z1bGx5IGVudW1lcmF0ZSB0aGUgbmV4dCBzdGFnZSBvZiB0aGUKVVNCIGRldmljZSBs
b2FkZXIgKG1vdmluZyBmcm9tIGZpcm13YXJlIGxvYWRpbmcgdG8gdGhlIGFjdHVhbCBkZXZpY2UK
aW50ZXJmYWNlIGZvciBleGFtcGxlKS4KClBhdGNoZXMgMSBhbmQgMiBhZGp1c3QgdGhlIFRlZ3Jh
LXNwZWNpZmljIHBvcnRpb24gb2YgdGhlIENoaXBpZGVhIFVTQgpjb250cm9sbGVyIHRvIGFsbG93
IGZvciB0aGUgZGlzYWJsaW5nIG9mIGF1dG9tYXRpYyBQSFkgYW5kIFVTQiBjb250cm9sbGVyCnJl
Z2lzdHJhdGlvbi4gVGhpcyBpcyBhY2hpZXZlZCBieSBhZGRpbmcgdGhlIG52aWRpYSxleHRlcm5h
bC1jb250cm9sCnByb3BlcnR5L2ZsYWcuIEl0IGRvZXMgbm90IGFmZmVjdCBhbnkgZXhpc3Rpbmcg
Y29uZmlndXJhdGlvbnMsIGJ1dCBpdAphbGxvd3MgdGhlIFVTQiBsaW5lIHRvIGJlIHJlZ2lzdGVy
ZWQgb3IgZGVyZWdpc3RlcmVkIGJ5IGFuIGV4dGVybmFsCmRldmljZSDigJQgaW4gdGhpcyBjYXNl
LCB0aGUgbW9kZW0uCgpQYXRjaGVzIDMgYW5kIDQgYWRkIHN1cHBvcnQgZm9yIHRoZSBnZW5lcmlj
IHBvcnRpb24gb2YgdGhlCkluZmluZW9uIFhNTTYyNjAgYmFzZWJhbmQgbW9kZW0sIHdoaWNoIHdh
cyB1c2VkIGluIG1hbnkgVGVncmEtLCBPTUFQLSwKYW5kIEV4eW5vcy1iYXNlZCBkZXZpY2VzIGNp
cmNhIDIwMTIuIFRoaXMgZHJpdmVyIHByb3ZpZGVzIHBvd2VyIHNlcXVlbmNlcywKbWFuYWdlcyBp
bml0aWFsIGNvbW11bmljYXRpb24gd2l0aCB0aGUgYXBwbGljYXRpb24gcHJvY2Vzc29yLCBoYW5k
bGVzIHRoZQpTb0Mtc3BlY2lmaWMgbW9kZW0gUEhZLCBhbmQgdmVyaWZpZXMgdGhhdCB0aGUgbW9k
ZW0gVVNCIGRldmljZSBhcHBlYXJzCmNvcnJlY3RseS4KClBhdGNoZXMgNSBhbmQgNiBpbXBsZW1l
bnQgc3VwcG9ydCBmb3IgdGhlIFRlZ3JhLXNwZWNpZmljIG1vZGVtIHBoeXNpY2FsCmxheWVyLCB3
aGljaCBoYW5kbGVzIHRoZSByZWdpc3RyYXRpb24gYW5kIHVucmVnaXN0cmF0aW9uIG9mIHRoZSBV
U0IKY29udHJvbGxlci4KCldoaWxlIGN1cnJlbnQgc3VwcG9ydCBpcyByZWxhdGl2ZWx5IGJhc2lj
LCB0aGlzIGNvbmZpZ3VyYXRpb24gYWxyZWFkeQphbGxvd3MgdGhlIG1vZGVtIGRldmljZSB0byBh
cHBlYXIgaW4gdGhlIGRtZXNnIG9mIG15IGRldmljZQooTEcgT3B0aW11cyBWdSAoUDg5NSkpOgoK
WyAgICA5LjQyNzAxNF0gY2lfaGRyYyBjaV9oZHJjLjE6IEVIQ0kgSG9zdCBDb250cm9sbGVyClsg
ICAgOS40MzE0ODhdIGNpX2hkcmMgY2lfaGRyYy4xOiBuZXcgVVNCIGJ1cyByZWdpc3RlcmVkLCBh
c3NpZ25lZCBidXMgbnVtYmVyIDEKWyAgICA5LjQ1NzE5N10gY2lfaGRyYyBjaV9oZHJjLjE6IFVT
QiAyLjAgc3RhcnRlZCwgRUhDSSAxLjAwClsgICAgOS40NjAzNzBdIHVzYiB1c2IxOiBOZXcgVVNC
IGRldmljZSBmb3VuZCwgaWRWZW5kb3I9MWQ2YiwgaWRQcm9kdWN0PTAwMDIsIGJjZERldmljZT0g
Ni4xNgpbICAgIDkuNDY4NDcwXSB1c2IgdXNiMTogTmV3IFVTQiBkZXZpY2Ugc3RyaW5nczogTWZy
PTMsIFByb2R1Y3Q9MiwgU2VyaWFsTnVtYmVyPTEKWyAgICA5LjQ3NTU5N10gdXNiIHVzYjE6IFBy
b2R1Y3Q6IEVIQ0kgSG9zdCBDb250cm9sbGVyClsgICAgOS40ODA1MDhdIHVzYiB1c2IxOiBNYW51
ZmFjdHVyZXI6IExpbnV4IDYuMTYuMCsgZWhjaV9oY2QKWyAgICA5LjQ4NTkxM10gdXNiIHVzYjE6
IFNlcmlhbE51bWJlcjogY2lfaGRyYy4xClsgICAgOS40OTA4NjJdIGh1YiAxLTA6MS4wOiBVU0Ig
aHViIGZvdW5kClsgICAgOS40OTQwMDVdIGh1YiAxLTA6MS4wOiAxIHBvcnQgZGV0ZWN0ZWQKWyAg
ICA5LjY1NzE5MV0gdXNiIDEtMTogbmV3IGhpZ2gtc3BlZWQgVVNCIGRldmljZSBudW1iZXIgMiB1
c2luZyBjaV9oZHJjClsgICAgOS44NDQ3MjZdIHVzYiAxLTE6IE5ldyBVU0IgZGV2aWNlIGZvdW5k
LCBpZFZlbmRvcj0xNTE5LCBpZFByb2R1Y3Q9MDAyMCwgYmNkRGV2aWNlPTEyLjc0ClsgICAgOS44
NTA1MzBdIHVzYiAxLTE6IE5ldyBVU0IgZGV2aWNlIHN0cmluZ3M6IE1mcj0xLCBQcm9kdWN0PTIs
IFNlcmlhbE51bWJlcj0zClsgICAgOS44NTc1OTRdIHVzYiAxLTE6IFByb2R1Y3Q6IEhTSUMgRGV2
aWNlClsgICAgOS44NjE2MDZdIHVzYiAxLTE6IE1hbnVmYWN0dXJlcjogQ29tbmVvbgpbICAgIDku
ODY1NjI3XSB1c2IgMS0xOiBTZXJpYWxOdW1iZXI6IDAxMjM0NTY3ODkKWyAgICA5LjkwODczOV0g
Y2RjX2FjbSAxLTE6MS4wOiB0dHlBQ00wOiBVU0IgQUNNIGRldmljZQoKU3Z5YXRvc2xhdiBSeWhl
bCAoNik6CiAgZHQtYmluZGluZ3M6IHVzYjogY2ktaGRyYy11c2IyOiBEb2N1bWVudCBudmlkaWEs
ZXh0ZXJuYWwtY29udHJvbAogICAgcHJvcGVydHkKICB1c2I6IGNoaXBpZGVhOiB0ZWdyYTogQXZv
aWQgY29udHJvbGxlci9QSFkgaW5pdCBpZiBidXMgaXMgZXh0ZXJuYWxseQogICAgY29udHJvbGxl
ZAogIGR0LWJpbmRpbmdzOiBuZXQ6IERvY3VtZW50IEluZmluZW9uL0ludGVsIFhNTTYyNjAgbW9k
ZW0KICBuZXQ6IHVzYjogQWRkIEluZmluZW9uIFhNTTYyNjAgQmFzZWJhbmQgbW9kZW0gc3VwcG9y
dAogIGR0LWJpbmRpbmdzOiBwaHk6IHRlZ3JhOiBEb2N1bWVudCBOdmlkaWEgVGVncmEgWE1NNjI2
MCBQSFkKICBwaHk6IHRlZ3JhOiBBZGQgc3VwcG9ydCBmb3IgTnZpZGlhIFRlZ3JhIFhNTTYyNjAg
UEhZCgogLi4uL2JpbmRpbmdzL25ldC9pbmZpbmVvbix4bW02MjYwLnlhbWwgICAgICAgIHwgIDcy
ICsrKysKIC4uLi9iaW5kaW5ncy9waHkvbnZpZGlhLHRlZ3JhLXhtbTYyNjAueWFtbCAgICB8ICA1
OCArKysKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9jaS1oZHJjLXVzYjIueWFtbCB8ICAg
NyArCiBkcml2ZXJzL25ldC91c2IvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgfCAgMTUg
KwogZHJpdmVycy9uZXQvdXNiL01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgIHwgICAxICsK
IGRyaXZlcnMvbmV0L3VzYi9iYXNlYmFuZC14bW02MjYwLmMgICAgICAgICAgICB8IDMzNSArKysr
KysrKysrKysrKysrKysKIGRyaXZlcnMvcGh5L3RlZ3JhL0tjb25maWcgICAgICAgICAgICAgICAg
ICAgICB8ICAxMiArCiBkcml2ZXJzL3BoeS90ZWdyYS9NYWtlZmlsZSAgICAgICAgICAgICAgICAg
ICAgfCAgIDEgKwogZHJpdmVycy9waHkvdGVncmEvcGh5LXRlZ3JhLXhtbTYyNjAuYyAgICAgICAg
IHwgMTQ0ICsrKysrKysrCiBkcml2ZXJzL3VzYi9jaGlwaWRlYS9jaV9oZHJjX3RlZ3JhLmMgICAg
ICAgICAgfCAgMzYgKy0KIDEwIGZpbGVzIGNoYW5nZWQsIDY2NyBpbnNlcnRpb25zKCspLCAxNCBk
ZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbmV0L2luZmluZW9uLHhtbTYyNjAueWFtbAogY3JlYXRlIG1vZGUgMTAwNjQ0IERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbnZpZGlhLHRlZ3JhLXhtbTYyNjAu
eWFtbAogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3VzYi9iYXNlYmFuZC14bW02MjYw
LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BoeS90ZWdyYS9waHktdGVncmEteG1tNjI2
MC5jCgotLSAKMi41MS4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
