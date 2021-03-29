Return-Path: <SRS0=W3RZ=I3=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540A6C433E0
	for <linux-phy@archiver.kernel.org>; Mon, 29 Mar 2021 23:31:08 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6CC56198A
	for <linux-phy@archiver.kernel.org>; Mon, 29 Mar 2021 23:31:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E6CC56198A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OIzTdhQgu+74mgTGii/YekuDbr8euFcYvuBltZl01Y4=; b=fzj9TF7FjvTgPOwOfaaxtM6KH/
	B1qW6pSb7AJLN4rJOlGfnQE5y5hvlnYcW32Inlz3Pmq5eaKyu0dZGknugnVxZfgF7BHoa7xU/gIh9
	OLUuZtPK39GH1R0Wpk3Pce/HBAqjfEO3wsbiU7XE6ovRwLS+cfgUPmj39XbKtAM/6QO/7B+2lqKKB
	gwoOa06BkHeuSdObYEDMTYgAZ5UuFMcKIQmlZipWrhL0lJ6SlyF+hp/v1oI0nJlgprbe0K4E03+Z4
	d4HKFFovmET1sJJngAnZ8rGpOoWZilVr4A47f6yvwFKY+iwzFqDVR+nFlBpcDHMasS+pHYXvbGAhX
	1WeN2r5A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR1Le-001x7x-8C; Mon, 29 Mar 2021 23:31:06 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lQv6N-000n7h-6f
 for linux-phy@lists.infradead.org; Mon, 29 Mar 2021 16:51:21 +0000
Received: by mail-lj1-x229.google.com with SMTP id r20so16719667ljk.4
 for <linux-phy@lists.infradead.org>; Mon, 29 Mar 2021 09:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ev5ZnwQH6OovPoIb991rlKvDbjzbwVrID4ypFygfIXw=;
 b=KdsrLZOdnGtJgVoDzaoH/Wibt+pls2wz39lHc6nXZAhWN+eGa0pPzSjInfVOcOb9M3
 NYJrLydA8LBf4Zm8akQgWMt3pqrXO8jYNUR35tuF/hSpWNNbpsOCqVYF8Zu1tAn1Os8S
 X40K02rD9N3m6/G9oOa6aQK3swEs3/hT6QeYUOknLqQWSIUVM5RiL8gDavjlFhYynuj0
 omJpsmSjr70g4cGKWe8iHXNS9DS4nSfMrdvy7mzq+Sd5IgAACqxSq0JK9sjuY1G4ZckB
 jOip4O38Yya+k3tjp4FPGsSAe+bVQi4C2SLUG5xGzXbFyfRPPM+VN7yZzdCBXsc2+p6K
 guOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ev5ZnwQH6OovPoIb991rlKvDbjzbwVrID4ypFygfIXw=;
 b=ef9FhuhJOqeAxe0RVg3DbY+7npDKPmufsF+SZXegOFbxUliYh5HIKBfbF1jrrrgjJF
 4eCuIiVaN4Sn7OH1siA6/S9e0N/YQqJg/wb7gAn2SRuGOEOWzFmgXnHNEqWTYc23nWs3
 Dt0yoCyVCvddYaaDOZk0bQ1m8uVhtZ/XY1DJh7Aa/KJRIsWr60jv4HwFiQxRnV5LCJyB
 rgDiHdTAF3+bYHIeMxX1lqvV42Ybf0+Z0vrex7JeeemrglbtfXb8XwdtxxRaxkBYbgA1
 646/Il7qUB7rttqaMAc1bYstMcFvMszn/XVkDuspRGoeompdduMVXNaKSPBnqQAAzxwj
 oETQ==
X-Gm-Message-State: AOAM532g9V8ti/Fh48Unp3yyfSu4SwaA9GORNQrE2mNqN3HZZ7ikh4qW
 YKYu3cPhblNp4vvSAUrPdr0=
X-Google-Smtp-Source: ABdhPJyvexCnCXT4nMw+KmaDGzdG+aa66NFRIvjrv7bJuef+DB0LtEF/KqpohyIxk4IIex9kSoECrQ==
X-Received: by 2002:a2e:b6d4:: with SMTP id m20mr18711288ljo.448.1617036654385; 
 Mon, 29 Mar 2021 09:50:54 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id 71sm1884905lfj.212.2021.03.29.09.50.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Mar 2021 09:50:53 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH RESEND] dt-bindings: phy: bcm-ns-usb2-phy: convert to yaml
Date: Mon, 29 Mar 2021 18:50:41 +0200
Message-Id: <20210329165041.31574-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_175110_763487_F32651E2 
X-CRM114-Status: GOOD (  15.10  )
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKMS4gQ29udmVydCBmcm9t
IHR4dCB0byB5YW1sCjIuIERyb3AgIkRyaXZlciBmb3IiIGZyb20gdGhlIHRpdGxlCjMuIERvY3Vt
ZW50ICIjcGh5LWNlbGxzIgo0LiBGaXggZXhhbXBsZSBub2RlIG5hbWUgKG5vdGljZWQgYnkgZHRf
YmluZGluZ19jaGVjaykKNS4gQWRkICNpbmNsdWRlIHRvIGV4YW1wbGUgKG5vdGljZWQgYnkgZHRf
YmluZGluZ19jaGVjaykKNi4gU3BlY2lmeSBsaWNlbnNlCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIg
TWnFgmVja2kgPHJhZmFsQG1pbGVja2kucGw+ClJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9i
aEBrZXJuZWwub3JnPgotLS0KSSBzZW50IHRoaXMgcGF0Y2ggYmFjayBpbiBOb3ZlbWJlciBhbmQg
Z290IGl0IHJldmlld2VkIGluIERlY2VtYmVyLgpTb21laG93IGl0IGhhcyBtaXNzZWQgbGludXgt
cGh5LmdpdCB0aG91Z2guCmh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9kZXZp
Y2V0cmVlLWJpbmRpbmdzL3BhdGNoLzIwMjAxMTE2MDc0NjUwLjE2MDcwLTItemFqZWM1QGdtYWls
LmNvbS8KLS0tCiAuLi4vYmluZGluZ3MvcGh5L2JjbS1ucy11c2IyLXBoeS50eHQgICAgICAgICAg
fCAyMSAtLS0tLS0tCiAuLi4vYmluZGluZ3MvcGh5L2JjbS1ucy11c2IyLXBoeS55YW1sICAgICAg
ICAgfCA1OSArKysrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDU5IGluc2VydGlv
bnMoKyksIDIxIGRlbGV0aW9ucygtKQogZGVsZXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjItcGh5LnR4dAogY3JlYXRlIG1vZGUg
MTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjIt
cGh5LnlhbWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGh5L2JjbS1ucy11c2IyLXBoeS50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L2JjbS1ucy11c2IyLXBoeS50eHQKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4
IGE3YWVlOWVhODkyNi4uMDAwMDAwMDAwMDAwCi0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjItcGh5LnR4dAorKysgL2Rldi9udWxsCkBAIC0xLDIx
ICswLDAgQEAKLURyaXZlciBmb3IgQnJvYWRjb20gTm9ydGhzdGFyIFVTQiAyLjAgUEhZCi0KLVJl
cXVpcmVkIHByb3BlcnRpZXM6Ci0tIGNvbXBhdGlibGU6IGJyY20sbnMtdXNiMi1waHkKLS0gcmVn
OiBpb21lbSBhZGRyZXNzIHJhbmdlIG9mIERNVSAoRGV2aWNlIE1hbmFnZW1lbnQgVW5pdCkKLS0g
cmVnLW5hbWVzOiAiZG11IiwgdGhlIG9ubHkgbmVlZGVkICYgc3VwcG9ydGVkIHJlZyByaWdodCBu
b3cKLS0gY2xvY2tzOiBVU0IgUEhZIHJlZmVyZW5jZSBjbG9jawotLSBjbG9jay1uYW1lczogInBo
eS1yZWYtY2xrIiwgdGhlIG9ubHkgbmVlZGVkICYgc3VwcG9ydGVkIGNsb2NrIHJpZ2h0IG5vdwot
Ci1UbyBpbml0aWFsaXplIFVTQiAyLjAgUEhZIGRyaXZlciBuZWVkcyB0byBzZXR1cCBQTEwgY29y
cmVjdGx5LiBUbyBkbyB0aGlzIGl0Ci1yZXF1aXJlcyBwYXNzaW5nIHBoYW5kbGUgdG8gdGhlIFVT
QiBQSFkgcmVmZXJlbmNlIGNsb2NrLgotCi1FeGFtcGxlOgotCXVzYjItcGh5IHsKLQkJY29tcGF0
aWJsZSA9ICJicmNtLG5zLXVzYjItcGh5IjsKLQkJcmVnID0gPDB4MTgwMGMwMDAgMHgxMDAwPjsK
LQkJcmVnLW5hbWVzID0gImRtdSI7Ci0JCSNwaHktY2VsbHMgPSA8MD47Ci0JCWNsb2NrcyA9IDwm
Z2VucGxsIEJDTV9OU1BfR0VOUExMX1VTQl9QSFlfUkVGX0NMSz47Ci0JCWNsb2NrLW5hbWVzID0g
InBoeS1yZWYtY2xrIjsKLQl9OwpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9iY20tbnMtdXNiMi1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvYmNtLW5zLXVzYjItcGh5LnlhbWwKbmV3IGZpbGUgbW9kZSAxMDA2
NDQKaW5kZXggMDAwMDAwMDAwMDAwLi4wNWI0ZGNkODAwMTkKLS0tIC9kZXYvbnVsbAorKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JjbS1ucy11c2IyLXBoeS55YW1s
CkBAIC0wLDAgKzEsNTkgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25s
eSBPUiBCU0QtMi1DbGF1c2UKKyVZQU1MIDEuMgorLS0tCiskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVl
Lm9yZy9zY2hlbWFzL3BoeS9iY20tbnMtdXNiMi1waHkueWFtbCMKKyRzY2hlbWE6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIworCit0aXRsZTogQnJvYWRjb20g
Tm9ydGhzdGFyIFVTQiAyLjAgUEhZCisKK2Rlc2NyaXB0aW9uOiA+CisgIFRvIGluaXRpYWxpemUg
VVNCIDIuMCBQSFkgZHJpdmVyIG5lZWRzIHRvIHNldHVwIFBMTCBjb3JyZWN0bHkuCisgIFRvIGRv
IHRoaXMgaXQgcmVxdWlyZXMgcGFzc2luZyBwaGFuZGxlIHRvIHRoZSBVU0IgUEhZIHJlZmVyZW5j
ZSBjbG9jay4KKworbWFpbnRhaW5lcnM6CisgIC0gUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxl
Y2tpLnBsPgorCitwcm9wZXJ0aWVzOgorICBjb21wYXRpYmxlOgorICAgIGNvbnN0OiBicmNtLG5z
LXVzYjItcGh5CisKKyAgcmVnOgorICAgIGl0ZW1zOgorICAgICAgLSBkZXNjcmlwdGlvbjogaW9t
ZW0gYWRkcmVzcyByYW5nZSBvZiBETVUgKERldmljZSBNYW5hZ2VtZW50IFVuaXQpCisKKyAgcmVn
LW5hbWVzOgorICAgIGl0ZW1zOgorICAgICAgLSBjb25zdDogZG11CisKKyAgY2xvY2tzOgorICAg
IGl0ZW1zOgorICAgICAgLSBkZXNjcmlwdGlvbjogVVNCIFBIWSByZWZlcmVuY2UgY2xvY2sKKwor
ICBjbG9jay1uYW1lczoKKyAgICBpdGVtczoKKyAgICAgIC0gY29uc3Q6IHBoeS1yZWYtY2xrCisK
KyAgIiNwaHktY2VsbHMiOgorICAgIGNvbnN0OiAwCisKK3JlcXVpcmVkOgorICAtIGNvbXBhdGli
bGUKKyAgLSByZWcKKyAgLSByZWctbmFtZXMKKyAgLSBjbG9ja3MKKyAgLSBjbG9jay1uYW1lcwor
ICAtICIjcGh5LWNlbGxzIgorCithZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKKworZXhhbXBs
ZXM6CisgIC0gfAorICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9iY20tbnNwLmg+Cisg
ICAgcGh5QDE4MDBjMDAwIHsKKyAgICAgICAgY29tcGF0aWJsZSA9ICJicmNtLG5zLXVzYjItcGh5
IjsKKyAgICAgICAgcmVnID0gPDB4MTgwMGMwMDAgMHgxMDAwPjsKKyAgICAgICAgcmVnLW5hbWVz
ID0gImRtdSI7CisgICAgICAgIGNsb2NrcyA9IDwmZ2VucGxsIEJDTV9OU1BfR0VOUExMX1VTQl9Q
SFlfUkVGX0NMSz47CisgICAgICAgIGNsb2NrLW5hbWVzID0gInBoeS1yZWYtY2xrIjsKKyAgICAg
ICAgI3BoeS1jZWxscyA9IDwwPjsKKyAgICB9OwotLSAKMi4yNi4yCgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
