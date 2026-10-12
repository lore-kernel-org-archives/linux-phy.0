Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2F51CA9EC5
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aW8lGXUFtpI7mKrHCPXqPZ4nEwCf71mbT0FaN6xGj3g=; b=onfX9kXApO0UWi
	UJqfPSaS3Oa7QPC9aPz2OMLmPLI4jAQoTLaJm8nyQN5HasxfCroY7579MSbGNq0n4qn50hQsCsWYe
	cQN2T1QOnON4HQ3qb2ECedWLi+QRb7tbchX0wpelDQhBrF8WXu6bUtOPKgJGNv8u2f/pteqlTDxrw
	oXWAwQrBgVYCmFf+rknMZN/Jf4YON+4fMDcGhPWJHzzqPm27lml+a77qHzCKQlCALXZaCulV2PdlW
	kk+dExJhxAuYk1WzQ66YfOAuHahL3SjzomPcgJh6u4uWHgSU2cQafYKT8kCWTCmw/LCWB4ZpVl+ap
	7yp1JXafdnRVMC56P4OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG7b-0000000Aa5P-1maR;
	Mon, 12 Oct 2026 13:31:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGG7W-0000000Aa15-06wd
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:31:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 77F3E60D79;
	Mon, 12 Oct 2026 13:31:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D22C1F0089C;
	Mon, 12 Oct 2026 13:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791811873;
	bh=OEzznKh6oLdoefji5VBpYZZ7u0kzvlI25oWj2c5cmaM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jfLaY0a715YYyBz4Y8FEUdgaEJIlN0Carx6fiA/1cAfkcN1PomZuh8+OIxQlyjkl4
	 FBb0wE8uX0zmWGx1/ZUt3GVJgTDjhk2h4OrU1gAYeU2rLDE20YmzOGhvi2ds1wT4Er
	 p28i4cqyKZwF+35+Syn+6NYZ8BjndTFMLAirDda9IHdiKoL0S3bP3iXqbmE0eTsTqU
	 LQqyn1wEZmvvMBkCqvF0PYHG0CxVERr1XWyPz7l5fNZ/KjqtuMvA9+L5AlnFgx2Egc
	 BhD3m+ZZ+ZzcfBC07l47VBz+pfN4DOfIRgyhTUQUv6t3ZHf58AehjcQuz/Gi8VbSB9
	 +fQ5QC35qMxDQ==
Date: Mon, 12 Oct 2026 19:01:03 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v7 0/5] Modify interrupt handling for eUSB2 Phy targets
Message-ID: <aszg7Us_ACMMiM9N@debian>
References: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com>
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

T24gU2F0LCBTZXAgMDUsIDIwMjYgYXQgMDg6NTk6MDRQTSArMDUzMCwgS3Jpc2huYSBLdXJhcGF0
aSB3cm90ZToKPiBlVVNCMiB0YXJnZXRzIGhhbmRsZSB3YWtldXAgaW50ZXJydXB0cyBkaWZmZXJl
bnRseSBkZXBlbmRpbmcgb24gZGV2aWNlCj4gc3BlZWQgd2hlbiBvcGVyYXRpbmcgaW4gaG9zdCBt
b2RlLgo+IAo+IEFjY29yZGluZyB0byB0aGUgZVVTQjIgc3BlY2lmaWNhdGlvbiwgcmVtb3RlIHdh
a2V1cCBzaWduYWxpbmcgaW4gaG9zdAo+IG1vZGUgaXMgZGV0ZWN0ZWQgdmlhIGRpZmZlcmVudCBk
YXRhLWxpbmUgYXNzZXJ0aW9ucyBiYXNlZCBvbiB0aGUKPiBjb25uZWN0ZWQgZGV2aWNlIHNwZWVk
Lgo+IAo+IFdoZW4gYSBsb3ctc3BlZWQgZGV2aWNlIGlzIGNvbm5lY3RlZCwgdGhlIGhvc3QgcmVw
ZWF0ZXIgZHJpdmVzIGVEKyB0bwo+IGxvZ2ljICcxJyB1cG9uIGRldGVjdGluZyBhIEstc3RhdGUg
b24gdGhlIFVTQiBsaW5lcyBkdXJpbmcgcmVtb3RlIHdha2V1cAo+IChlVVNCMiBzcGVjaWZpY2F0
aW9uLCBTZWN0aW9uIDUuNS4xNCkuCj4gCj4gV2hlbiBhIGZ1bGwtc3BlZWQgb3IgaGlnaC1zcGVl
ZCBkZXZpY2UgaXMgY29ubmVjdGVkLCB0aGUgaG9zdCByZXBlYXRlcgo+IGRyaXZlcyBlRC0gdG8g
bG9naWMgJzEnIHVwb24gZGV0ZWN0aW5nIGEgSy1zdGF0ZSBvbiB0aGUgVVNCIGxpbmUgZHVyaW5n
Cj4gcmVtb3RlIHdha2V1cCAoZVVTQjIgc3BlY2lmaWNhdGlvbiwgU2VjdGlvbnMgNS41LjE1IGFu
ZCA1LjUuMTgpLgo+IAo+IFNpbmNlIHRoZSBlVVNCMiBQSFkncyAiRFAiIGFuZCAiRE0iIGludGVy
cnVwdCBsaW5lcyBtb25pdG9yIHRoZSBlRCsgYW5kCj4gZUQtIGxpbmUgc3RhdGVzLCBjb25maWd1
cmUgdGhlIHdha2V1cCBpbnRlcnJ1cHRzIGFjY29yZGluZ2x5Cj4gCj4gQWRkIHN1cHBvcnQgZm9y
IGEgbmV3IHBoeSAidHlwZSIgYXR0cmlidXRlIHRvIGJlIHNldCBieSBldXNiMiBwaHkgZHJpdmVy
cwo+IGFuZCBiZSByZWFkIGJ5IGNvbnN1bWVycyAoaW4gdGhpcyBjYXNlIHVzYiBjb250cm9sbGVy
KSBhbmQgYWN0IGFjY29yZGluZ2x5Cj4gCj4gQ2hhbmdlcyBwdXNoZWQgb24gdG9wIG9mIHVzYi10
ZXN0aW5nIGJyYW5jaC4gQW5kIHY3IGlzIG9ubHkgY29tcGlsZSB0ZXN0ZWQuCj4gCgpJIGJlbGll
dmUgdGhlIG1lcmdlIHN0cmF0ZWd5IGlzIHRvIG1lcmdlIGFsbCB0aGUgcGF0Y2hlcyB0aHJvdWdo
IFBIWSB0cmVlLiBJZgphbnlvbmUgZmVlbCBvdGhlcndpc2UsIHBsZWFzZSB5ZWxsIGF0IG1lLgoK
LSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+Cu
teCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
