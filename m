Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BE2AC4345F
	for <linux-phy@archiver.kernel.org>; Wed, 24 Apr 2024 12:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hd0hu+wFq8nqFFnSM1ncrRJ4znTTosISnKm6ElOVxCY=; b=0mNWk7nMKxt3dJ
	WGnMEUdVyU1cZrgUuZ+FPGMQFu+bqef+oiPkqUP9mbBRey/ZWMr6qn+C0go1YfYJ8rguGf8TwYdNc
	q/29/5NDcQsDGMJiOdn1Cr0yXjzDZOnsF5boRjwxg5q8e1okuaISEDeeXm4KeaQGZUNG2qY/Efagt
	rR5bjjLjxjMUvtcwpIhGWkmI61dnwTRCNQhyni20yhEN0+COBb+tItP1b2JeQkfRNInsFThiK7ZwY
	VffSa3+IIP5+Ccw6m9t9TuFRWOBajte1KvC2DXVSraNgT7qv6vvtpnwFs4SJuOOdf134av+K6ieb+
	APbvFdbiTP/NAStl2/yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzbch-000000042b8-2hXV;
	Wed, 24 Apr 2024 12:21:15 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzbce-000000042ZE-1Pzl;
	Wed, 24 Apr 2024 12:21:14 +0000
Received: from pps.filterd (m0369457.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43OC4omW029734;
	Wed, 24 Apr 2024 14:20:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=hkSUB26Hij3YoH4d4gONssMZiD9lhMIi9MYuoDahbc0=; b=oP
	BxCIqjZqjU5yIPdolezp3gucfYE43BpO2moF0boJpv1s74317nNrf8tTbYX5usOd
	rlKx/FhS1Qy6Jkjea82P6nnIhij2k6RtqQ72RGkfOKHZzW/rYU1jige7eN6glRBm
	Gr/fYnvQ0nI1FFIhwyV+FpQcOob58VqnssUOpcpR/bfBeTjXY5MTu8NY0VN5oLNt
	baPC6vo+Z6OwTORIZk9BIz6pJZyBiWpxinx+vs127hpTMIh3Q7+NTYQB11bqSkWu
	wTRZ/tTR1dd1WWC/yQviBRPlU7NtgpxHp9kyOZz9PzdXYOFqZatkp9e4ugAKrRJ2
	ZAcLVNQAQ/E+lH5KwgDw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3xmrnj5npa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 24 Apr 2024 14:20:39 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 16FD54002D;
	Wed, 24 Apr 2024 14:20:30 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0C4C621A91F;
	Wed, 24 Apr 2024 14:19:21 +0200 (CEST)
Received: from [10.48.86.79] (10.48.86.79) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 24 Apr
 2024 14:19:18 +0200
Message-ID: <a0bd94ce-3ddb-4448-ada9-7070323cc98f@foss.st.com>
Date: Wed, 24 Apr 2024 14:19:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 06/13] of: property: fw_devlink: Add support for
 "access-controller"
To: Saravana Kannan <saravanak@google.com>,
        Gatien Chevallier
	<gatien.chevallier@foss.st.com>
CC: <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
        <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <vkoul@kernel.org>, <jic23@kernel.org>,
        <olivier.moysan@foss.st.com>, <arnaud.pouliquen@foss.st.com>,
        <mchehab@kernel.org>, <fabrice.gasnier@foss.st.com>,
        <andi.shyti@kernel.org>, <ulf.hansson@linaro.org>,
        <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
        <hugues.fruchet@foss.st.com>, <lee@kernel.org>, <will@kernel.org>,
        <catalin.marinas@arm.com>, <arnd@kernel.org>,
        <richardcochran@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
        <peng.fan@oss.nxp.com>, <lars@metafoo.de>, <rcsekar@samsung.com>,
        <wg@grandegger.com>, <mkl@pengutronix.de>,
        <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, Rob Herring <robh@kernel.org>
References: <20240105130404.301172-1-gatien.chevallier@foss.st.com>
 <20240105130404.301172-7-gatien.chevallier@foss.st.com>
 <CAGETcx8HdnspNfDEJP+cqShJPsDryzGkOVq6B99cFQzkZi3dMg@mail.gmail.com>
Content-Language: en-US
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <CAGETcx8HdnspNfDEJP+cqShJPsDryzGkOVq6B99cFQzkZi3dMg@mail.gmail.com>
X-Originating-IP: [10.48.86.79]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-24_10,2024-04-23_02,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_052112_702068_9325C034 
X-CRM114-Status: GOOD (  15.16  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

SGkgU2FyYXZhbmEKCk9uIDQvMjQvMjQgMDc6NTcsIFNhcmF2YW5hIEthbm5hbiB3cm90ZToKPiBP
biBGcmksIEphbiA1LCAyMDI0IGF0IDU6MDPigK9BTSBHYXRpZW4gQ2hldmFsbGllcgo+IDxnYXRp
ZW4uY2hldmFsbGllckBmb3NzLnN0LmNvbT4gd3JvdGU6Cj4+Cj4+IEFsbG93cyB0cmFja2luZyBk
ZXBlbmRlbmNpZXMgYmV0d2VlbiBkZXZpY2VzIGFuZCB0aGVpciBhY2Nlc3MKPj4gY29udHJvbGxl
ci4KPj4KPj4gU2lnbmVkLW9mZi1ieTogR2F0aWVuIENoZXZhbGxpZXIgPGdhdGllbi5jaGV2YWxs
aWVyQGZvc3Muc3QuY29tPgo+PiBBY2tlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9y
Zz4KPiAKPiBQbGVhc2UgY2MgbWUgb24gZndfZGV2bGluayBwYXRjaGVzLiBBbHNvLCB0aGlzIHBh
dGNoIGlzIGJyZWFraW5nIHRoZQo+IG5vcm0gYmVsb3cuIFBsZWFzZSBzZW5kIGEgZml4IHVwIHBh
dGNoLgo+IAo+PiAtLS0KPj4gQ2hhbmdlcyBpbiBWOToKPj4gICAgICAgICAgLSBBZGRlZCBSb2In
cyByZXZpZXcgdGFnCj4+Cj4+IENoYW5nZXMgaW4gVjY6Cj4+ICAgICAgICAgIC0gUmVuYW1lZCBh
Y2Nlc3MtY29udHJvbGxlciB0byBhY2Nlc3MtY29udHJvbGxlcnMKPj4KPj4gQ2hhbmdlcyBpbiBW
NToKPj4gICAgICAgICAgLSBSZW5hbWUgZmVhdHVyZS1kb21haW4qIHRvIGFjY2Vzcy1jb250cm9s
Kgo+Pgo+PiBQYXRjaCBub3QgcHJlc2VudCBpbiBWMQo+Pgo+PiAgIGRyaXZlcnMvb2YvcHJvcGVy
dHkuYyB8IDIgKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL29mL3Byb3BlcnR5LmMgYi9kcml2ZXJzL29mL3Byb3BlcnR5LmMK
Pj4gaW5kZXggYWZkYWVmYmQwM2Y2Li43ZjczN2VhYzkxYjIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvb2YvcHJvcGVydHkuYwo+PiArKysgYi9kcml2ZXJzL29mL3Byb3BlcnR5LmMKPj4gQEAgLTEy
NjgsNiArMTI2OCw3IEBAIERFRklORV9TSU1QTEVfUFJPUChsZWRzLCAibGVkcyIsIE5VTEwpCj4+
ICAgREVGSU5FX1NJTVBMRV9QUk9QKGJhY2tsaWdodCwgImJhY2tsaWdodCIsIE5VTEwpCj4+ICAg
REVGSU5FX1NJTVBMRV9QUk9QKHBhbmVsLCAicGFuZWwiLCBOVUxMKQo+PiAgIERFRklORV9TSU1Q
TEVfUFJPUChtc2lfcGFyZW50LCAibXNpLXBhcmVudCIsICIjbXNpLWNlbGxzIikKPj4gK0RFRklO
RV9TSU1QTEVfUFJPUChhY2Nlc3NfY29udHJvbGxlcnMsICJhY2Nlc3MtY29udHJvbGxlcnMiLCAi
I2FjY2Vzcy1jb250cm9sbGVyLWNlbGxzIikKPj4gICBERUZJTkVfU1VGRklYX1BST1AocmVndWxh
dG9ycywgIi1zdXBwbHkiLCBOVUxMKQo+PiAgIERFRklORV9TVUZGSVhfUFJPUChncGlvLCAiLWdw
aW8iLCAiI2dwaW8tY2VsbHMiKQo+Pgo+PiBAQCAtMTM2Myw2ICsxMzY0LDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBzdXBwbGllcl9iaW5kaW5ncyBvZl9zdXBwbGllcl9iaW5kaW5nc1tdID0gewo+
PiAgICAgICAgICB7IC5wYXJzZV9wcm9wID0gcGFyc2VfcmVndWxhdG9ycywgfSwKPj4gICAgICAg
ICAgeyAucGFyc2VfcHJvcCA9IHBhcnNlX2dwaW8sIH0sCj4+ICAgICAgICAgIHsgLnBhcnNlX3By
b3AgPSBwYXJzZV9ncGlvcywgfSwKPj4gKyAgICAgICB7IC5wYXJzZV9wcm9wID0gcGFyc2VfYWNj
ZXNzX2NvbnRyb2xsZXJzLCB9LAo+IAo+IEFsbCB0aGUgc2ltcGxlIHByb3BlcnRpZXMgYXJlIGxp
c3RlZCBiZWZvcmUgdGhlIHN1ZmZpeCBvbmVzIGFzIHRoZQo+IHN1ZmZpeCBjaGVja3MgYXJlIG1v
cmUgZXhwZW5zaXZlLiBTbywgeW91IHNob3VsZCBoYXZlIGluc2VydGVkIHRoaXMKPiByaWdodCBi
ZWZvcmUgdGhlIHN1ZmZpeCBwcm9wZXJ0aWVzLiBBbHNvLCB0aGVyZSdzIGEgbWVyZ2UgY29uZmxp
Y3QgaW4KPiBsaW51eC1uZXh0LiBTbyBtYWtlIHN1cmUgeW91IHRha2UgdGhhdCBpbnRvIGFjY291
bnQgd2hlbiBzZW5kaW5nIHRoZQo+IGZpeCB1cCBhbmQgcGlja2luZyB0aGUgb3JkZXIuCgpJJ20g
Zml4aW5nIHRoZSBzdG0zMi1uZXh0IGJyYW5jaCBieSBpbnNlcnRpbmcKCiAgICAgICAgIHsgLnBh
cnNlX3Byb3AgPSBwYXJzZV9hY2Nlc3NfY29udHJvbGxlcnMsIH0sCmp1c3QgYmVmb3JlCgoJeyAu
cGFyc2VfcHJvcCA9IHBhcnNlX3JlZ3VsYXRvcnMsIH0sCgoKPiAKPiAtU2FyYXZhbmEKPiAKPj4g
ICAgICAgICAge30KPj4gICB9Owo+IAo+Pgo+PiAtLQo+PiAyLjM1LjMKPj4KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
