Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FDF1C61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 14:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wcfu588LO1WYz3r1Z7gQpdqt5CnmTJX+fN3C33OnMoA=; b=hhJYSti1It8Qrh
	tSk5cDDqKcs0d16+n+nI5engxGczLP0JuP0Yo9q6Zv9Pj+J5XF9lvI15BiqYQmBwVvIACkRtMa5y1
	wqkvhF4BnQ7mzh51EBOBv+sc51DNpp+OhnGSwWrOYOBBd5J0BWsAViIgxTZpd2mXd/imoqzcpANA1
	Q5POUYpOyC6e0HrZrtLiYvIE4ZZ/ecDFJu5Gv0lXYLuDm0/TzAbj8QvV/JORQx+6s1dLMpclJgf9O
	hK6CNBxm3Ogb3NNurhuhT/ca0TPSYW6a9kMvmIGARHEoj8TwpNDWQEpr61XYD0esuIaHVHlhS3/8g
	626/qJvAlH/N7niZdFgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28iQ-0000000HY07-0Gw1;
	Thu, 03 Sep 2026 14:46:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28iP-0000000HXzy-08Dx
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 14:46:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 51D8042A92;
	Thu,  3 Sep 2026 14:46:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB1791F00A3A;
	Thu,  3 Sep 2026 14:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788446816;
	bh=+qs3EBF9nenvfUTPLlMjM9Xf+f4F2PfRSpFYfdDb/8M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NUPgw6JD0c0gkfHn8p6HlVRkZnxba+cWUi4dplbf/B6zR7pklDQm+aB9d0gPmA0bs
	 37tPHA901TXZUf8GIR2Vu0RZ3XkcmpF5Ob6v3kwt7CahB19ocCpc9m7XDvIci25fUP
	 yA1NxUNfx9w+ck++Kwx4e55dbR/hKeNTueLhUWFcV+eCdbBI2b4EAu7fFIbrFdNAo2
	 SGsi/3Mq4pwcNfwwLK5vCRFHY/2CT0Wu7rwN+/EoK4eZTk2VBD0TobaGotIPlwEhRJ
	 7mOtRmrSqFmUFJC/sKJkmL1wwAdaCnmaUaIaplGskLlAR314+HP4W3sBRXP1NsbRq/
	 2fe/wykQzijWw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom,qusb2: Straighten out
 SM6125 and MSM8996
To: "Konrad Dybcio" <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260903-topic-8996_61x5_qusb2phy-v2-1-4c3f980a4560@oss.qualcomm.com>
References: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
 <20260903-topic-8996_61x5_qusb2phy-v2-1-4c3f980a4560@oss.qualcomm.com>
Date: Thu, 03 Sep 2026 14:46:55 +0000
Message-Id: <20260903144655.BB1791F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGJpbmRpbmcg
Y2hhbmdlIGNhdXNlcyBkdGJzX2NoZWNrIHRvIGZhaWwgZm9yIGV4aXN0aW5nIGluLXRyZWUgTVNN
ODk5NiBhbmQgU002MTI1IGRldmljZSB0cmVlcywgYW5kIGludHJvZHVjZXMgYW4gYXJjaGl0ZWN0
dXJhbCBkaXNjb25uZWN0IHdpdGggdGhlIGRyaXZlcidzIHVuY29uZGl0aW9uYWwgcmVndWxhdG9y
IHJlcXVlc3RzLgotLQoKY29tbWl0IGE4MzU3ZjFhODgzZGRhZDQyOWJmODBlNmMyNmY1ZmJhMTQz
NDA0ZGUKQXV0aG9yOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5j
b20+CgpkdC1iaW5kaW5nczogcGh5OiBxY29tLHF1c2IyOiBTdHJhaWdodGVuIG91dCBTTTYxMjUg
YW5kIE1TTTg5OTYKClNNNjEyNSBEVCBjdXJyZW50bHkgdXNlcyBqdXN0IHRoZSBNU004OTk2IGNv
bXBhdGlibGUgKHdpdGhvdXQgYSBwcmltYXJ5ClNNNjEyNS1zcGVjaWZpYyBvbmUpLiBUaGlzIGNv
bW1pdCBhZGRzIGEgbmV3IGNvbXBhdGlibGUgZm9yIFNNNjEyNSB3aXRoCmEgU002MTE1IGZhbGxi
YWNrLiBJdCBhbHNvIHVwZGF0ZXMgdGhlIE1TTTg5OTYgYmluZGluZyB0byByZXF1aXJlCnBvd2Vy
LWRvbWFpbnMgYW5kIHJlcXVpcmVkLW9wcHMgaW5zdGVhZCBvZiB2ZGQtc3VwcGx5LgoKPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHF1c2Iy
LXBoeS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHF1
c2IyLXBoeS55YW1sCj4gaW5kZXggMDAxZmQwY2NjOTg1Mi4uY2ZjNWExZDE2YjdmMiAxMDA2NDQK
PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20scXVzYjIt
cGh5LnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fj
b20scXVzYjItcGh5LnlhbWwKWyAuLi4gXQo+IEBAIC0xODcsNiArMTk1LDIyIEBAIGFsbE9mOgo+
ICAgICAgICAgIHFjb20scHJlZW1waGFzaXMtd2lkdGg6IGZhbHNlCj4gICAgICAgICAgcWNvbSxo
c2Rpc2MtdHJpbS12YWx1ZTogZmFsc2UKPiAgCj4gKyAgIyBPbiBNU004OTk2LCBWREQgaXMgc3Vw
cGxpZWQgdmlhIHRoZSBNWCBwb3dlciBkb21haW4KPiArICAtIGlmOgo+ICsgICAgICBwcm9wZXJ0
aWVzOgo+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICBjb25zdDogcWNvbSxtc204
OTk2LXF1c2IyLXBoeQo+ICsgICAgdGhlbjoKPiArICAgICAgcmVxdWlyZWQ6Cj4gKyAgICAgICAg
LSBwb3dlci1kb21haW5zCj4gKyAgICAgICAgLSByZXF1aXJlZC1vcHBzCgpbU2V2ZXJpdHk6IE1l
ZGl1bV0KV2lsbCB0aGlzIGJyZWFrIGR0YnNfY2hlY2sgZm9yIGV4aXN0aW5nIGluLXRyZWUgTVNN
ODk5NiBhbmQgU002MTI1IGRldmljZQp0cmVlcyBieSBtYW5kYXRpbmcgcG93ZXItZG9tYWlucyBm
b3IgTVNNODk5NiBiZWZvcmUgdGhlIGluLXRyZWUgZGV2aWNlCnRyZWVzIGFyZSB1cGRhdGVkPwoK
V2hpbGUgdGhpcyBkdGJzX2NoZWNrIGJyZWFrYWdlIGlzIHJlc29sdmVkIGxhdGVyIGluIHRoZSBz
ZXJpZXMgYnkgY29tbWl0CiJhcm02NDogZHRzOiBxY29tOiBtc204OTk2OiBBZGQgVkREX01YIHRv
IFFVU0IyIFBIWXMiIGFuZCBjb21taXQKImFybTY0OiBkdHM6IHFjb206IHNtNjEyNTogRml4IFFV
U0IyIGNvbXBhdGlibGUiLCBkb2VzIHRoaXMgY2hhbmdlIGNyZWF0ZQphbiBhcmNoaXRlY3R1cmFs
IGRpc2Nvbm5lY3Qgd2l0aCB0aGUgZHJpdmVyIHRoYXQgcmVtYWlucyB1bnJlc29sdmVkPwoKTG9v
a2luZyBhdCBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xdXNiMi5jLCBpdCB1bmNvbmRp
dGlvbmFsbHkKcmVxdWlyZXMgdGhlIHZkZCByZWd1bGF0b3I6Cgpkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xdXNiMi5jOnF1c2IyX3BoeV92cmVnX25hbWVzW10gPSB7CiAgICAgICAgInZk
ZCIsICJ2ZGRhLXBsbCIsICJ2ZGRhLXBoeS1kcGRtIiwKfTsKCklmIGEgc3RyaWN0bHkgc2NoZW1h
LWNvbXBsaWFudCBkZXZpY2UgdHJlZSBvbWl0cyB2ZGQtc3VwcGx5IGZvciBNU004OTk2LAp3b3Vs
ZCB0aGlzIGNhdXNlIHRoZSBkcml2ZXIgdG8gZmFpbCBwcm9iaW5nIHdoZW4gaXQgdW5jb25kaXRp
b25hbGx5IGZldGNoZXMKdmRkIHZpYSBkZXZtX3JlZ3VsYXRvcl9idWxrX2dldCgpPwoKPiArICAg
IGVsc2U6Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgcG93ZXItZG9tYWluczogZmFs
c2UKPiArICAgICAgICByZXF1aXJlZC1vcHBzOiBmYWxzZQo+ICsgICAgICByZXF1aXJlZDoKPiAr
ICAgICAgICAtIHZkZC1zdXBwbHkKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MDMtdG9waWMtODk5Nl82MXg1X3F1c2IycGh5LXYy
LTAtNGMzZjk4MGE0NTYwQG9zcy5xdWFsY29tbS5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
