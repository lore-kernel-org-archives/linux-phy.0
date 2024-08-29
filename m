Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6984FC73C66
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 11:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baaz+jxFOrcYM45hw9nwSc7jOyA5P9PJaIEUYZSCdU4=; b=v+yJaRGn5dxtFZ
	DKwIjVra7VOgldc731qflLDa4EY8o5gnzHswR8yqsiHeAC4fY9o0iKoEzgB93pLojwjLIU8e6Ny82
	wOk8AAXd6bwRvH8JU+xBy1XHgq2kMoH5IFdOzfF80f/PlD/SMGNQQbC2DcDK9rypmJ2LRTuRtmgwH
	qUYErXT9Mn1Pxh5Eu8LZNuN1qeiOQmJzTqkIC+M1BTXMYplE0ASmSUQ+jBJJlS7pQgfx6wz0VvviB
	0v2siwZkFem68h/5gTsXRKG9OZMoznV48ztQ/D7OaUsqgVp1LVNYw3SzbDaQPqe8i5+DeDlgmI8pO
	jS276//y43rOMbxzvKAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjd1F-00000001hca-3VDl;
	Thu, 29 Aug 2024 11:08:49 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjczn-00000001hB7-389Z;
	Thu, 29 Aug 2024 11:07:22 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47T8VC3O013994;
	Thu, 29 Aug 2024 13:07:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	Jw191MdcLJDiHz3SnaEKXrLm1BcBizdG8CQxgijglLY=; b=VL/3cTgyTbAiUU9E
	d/pxaR8rJ77F2XQhP+ORaN8RJG1fUzx3CNuEPRnmpXxVp3h8+4UEDzje1YFeGlDQ
	DUMiel3vP9vEp7MYqSmcU1erpERSGsGw2sfsn8gd0kqRcxb4fg70XaJHVb2HbJ7D
	Ckke1PkQze2FyDbXrG8wcHJH/6RpOeAIzHx0pUXTAY6RxUPbVoH0jmjMFUixScOx
	UCKlkS4LxSYnvHGj67f5ZIBCnI+diqMEafJR/kmjs5CWLKS5DXzfnUKbFwwR2NgO
	HE68gZ+FLQdac/vntBD9NIzuhTr6B7jJyOmo6cU6FOgUGfkskAWytnqFPJ7AahkK
	o2Pbxw==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 41a4y649qr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 Aug 2024 13:07:10 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 4044B4002D;
	Thu, 29 Aug 2024 13:07:05 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E71BF25ED6F;
	Thu, 29 Aug 2024 13:07:00 +0200 (CEST)
Received: from [10.129.178.212] (10.129.178.212) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Thu, 29 Aug
 2024 13:07:00 +0200
Message-ID: <005a2f7d-ab46-46c8-a0cc-b343685caf7c@foss.st.com>
Date: Thu, 29 Aug 2024 13:06:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/5] dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
To: Conor Dooley <conor@kernel.org>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mcoquelin.stm32@gmail.com>, <alexandre.torgue@foss.st.com>,
        <p.zabel@pengutronix.de>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <fabrice.gasnier@foss.st.com>
References: <20240828143452.1407532-1-christian.bruel@foss.st.com>
 <20240828143452.1407532-2-christian.bruel@foss.st.com>
 <20240828-handsfree-overarch-cd1af26cb0c5@spud>
Content-Language: en-US
From: Christian Bruel <christian.bruel@foss.st.com>
In-Reply-To: <20240828-handsfree-overarch-cd1af26cb0c5@spud>
X-Originating-IP: [10.129.178.212]
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-29_02,2024-08-29_02,2024-05-17_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_040720_233698_7C409BD3 
X-CRM114-Status: GOOD (  25.49  )
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

T24gOC8yOC8yNCAxODoxMSwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+IE9uIFdlZCwgQXVnIDI4LCAy
MDI0IGF0IDA0OjM0OjQ4UE0gKzAyMDAsIENocmlzdGlhbiBCcnVlbCB3cm90ZToKPj4gRG9jdW1l
bnQgdGhlIGJpbmRpbmdzIGZvciBTVE0zMiBDT01CT1BIWSBpbnRlcmZhY2UsIHVzZWQgdG8gc3Vw
cG9ydAo+PiB0aGUgUENJZSBhbmQgVVNCMyBzdG0zMm1wMjUgZHJpdmVycy4KPj4gRm9sbG93aW5n
IGVudHJpZXMgY2FuIGJlIHVzZWQgdG8gdHVuZSBjYXJhY3RlcmlzYXRpb24gcGFyYW1ldGVycwo+
PiAgIC0gc3Qsb3V0cHV0LW1pY3JvLW9obXMgYW5kIHN0LG91dHB1dC12c3dpbmctbWljcm92b2x0
IGJpbmRpbmdzIGVudHJpZXMKPj4gdG8gdHVuZSB0aGUgaW1wZWRhbmNlIGFuZCB2b2x0YWdlIHN3
aW5nIHVzaW5nIGRpc2NyZXRlIHNpbXVsYXRpb24gcmVzdWx0cwo+PiAgIC0gc3QscngtZXF1YWxp
emVyIHJlZ2lzdGVyIHRvIHNldCB0aGUgaW50ZXJuYWwgcnggZXF1YWxpemVyIGZpbHRlciB2YWx1
ZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEJydWVsIDxjaHJpc3RpYW4uYnJ1ZWxA
Zm9zcy5zdC5jb20+Cj4+IC0tLQo+PiAgIC4uLi9iaW5kaW5ncy9waHkvc3Qsc3RtMzJtcDI1LWNv
bWJvcGh5LnlhbWwgICB8IDEyOCArKysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdl
ZCwgMTI4IGluc2VydGlvbnMoKykKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zdCxzdG0zMm1wMjUtY29tYm9waHkueWFtbAo+Pgo+
PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zdCxz
dG0zMm1wMjUtY29tYm9waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvc3Qsc3RtMzJtcDI1LWNvbWJvcGh5LnlhbWwKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi44ZDRhNDBiOTQ1MDcKPj4gLS0tIC9kZXYvbnVsbAo+PiAr
KysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3N0LHN0bTMybXAyNS1j
b21ib3BoeS55YW1sCj4+IEBAIC0wLDAgKzEsMTI4IEBACj4+ICsjIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2UpCj4+ICslWUFNTCAxLjIKPj4gKy0tLQo+
PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvc3Qsc3RtMzJtcDI1LWNv
bWJvcGh5LnlhbWwjCj4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hl
bWFzL2NvcmUueWFtbCMKPj4gKwo+PiArdGl0bGU6IFNUTWljcm9lbGVjdHJvbmljcyBTVE0zMk1Q
MjUgVVNCMy9QQ0llIENPTUJPUEhZCj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArICAtIENocmlz
dGlhbiBCcnVlbCA8Y2hyaXN0aWFuLmJydWVsQGZvc3Muc3QuY29tPgo+PiArCj4+ICtkZXNjcmlw
dGlvbjoKPj4gKyAgU2luZ2xlIGxhbmUgUEhZIHNoYXJlZCAoZXhjbHVzaXZlKSBiZXR3ZWVuIHRo
ZSBVU0IzIGFuZCBQQ0llIGNvbnRyb2xsZXJzLgo+PiArICBTdXBwb3J0cyA1R2JpdC9zIGZvciBV
U0IzIGFuZCBQQ0llIGdlbjIgb3IgMi41R2JpdC9zIGZvciBQQ0llIGdlbjEuCj4+ICsKPj4gK3By
b3BlcnRpZXM6Cj4+ICsgIGNvbXBhdGlibGU6Cj4+ICsgICAgY29uc3Q6IHN0LHN0bTMybXAyNS1j
b21ib3BoeQo+PiArCj4+ICsgIHJlZzoKPj4gKyAgICBtYXhJdGVtczogMQo+PiArCj4+ICsgICIj
cGh5LWNlbGxzIjoKPj4gKyAgICBjb25zdDogMQo+PiArCj4+ICsgIGNsb2NrczoKPj4gKyAgICBt
aW5JdGVtczogMgo+PiArICAgIGl0ZW1zOgo+PiArICAgICAgLSBkZXNjcmlwdGlvbjogYXBiIEJ1
cyBjbG9jayBtYW5kYXRvcnkgdG8gYWNjZXNzIHJlZ2lzdGVycy4KPj4gKyAgICAgIC0gZGVzY3Jp
cHRpb246IGtlciBJbnRlcm5hbCBSQ0MgcmVmZXJlbmNlIGNsb2NrIGZvciBVU0IzIG9yIFBDSWUK
Pj4gKyAgICAgIC0gZGVzY3JpcHRpb246IHBhZCBPcHRpb25hbCBvbiBib2FyZCBjbG9jayBpbnB1
dCBmb3IgUENJZSBvbmx5LiBUeXBpY2FsbHkgYW4KPj4gKyAgICAgICAgICAgICAgICAgICAgIGV4
dGVybmFsIDEwME1oeiBvc2NpbGxhdG9yIHdpcmVkIG9uIGRlZGljYXRlZCBDTEtJTiBwYWQuIFVz
ZWQgYXMgcmVmZXJlbmNlCj4+ICsgICAgICAgICAgICAgICAgICAgICBjbG9jayBpbnB1dCBpbnN0
ZWFkIG9mIHRoZSBrZXIKPj4gKwo+PiArICBjbG9jay1uYW1lczoKPj4gKyAgICBtaW5JdGVtczog
Mgo+PiArICAgIGl0ZW1zOgo+PiArICAgICAgLSBjb25zdDogYXBiCj4+ICsgICAgICAtIGNvbnN0
OiBrZXIKPj4gKyAgICAgIC0gY29uc3Q6IHBhZAo+PiArCj4+ICsgIHJlc2V0czoKPj4gKyAgICBt
YXhJdGVtczogMQo+PiArCj4+ICsgIHJlc2V0LW5hbWVzOgo+PiArICAgIGNvbnN0OiBwaHkKPj4g
Kwo+PiArICBwb3dlci1kb21haW5zOgo+PiArICAgIG1heEl0ZW1zOiAxCj4+ICsKPj4gKyAgd2Fr
ZXVwLXNvdXJjZTogdHJ1ZQo+PiArCj4+ICsgIGludGVycnVwdHM6Cj4+ICsgICAgbWF4SXRlbXM6
IDEKPj4gKyAgICBkZXNjcmlwdGlvbjogaW50ZXJydXB0IHVzZWQgZm9yIHdha2V1cAo+PiArCj4+
ICsgIGFjY2Vzcy1jb250cm9sbGVyczoKPj4gKyAgICBtaW5JdGVtczogMQo+PiArICAgIG1heEl0
ZW1zOiAyCj4gQ2FuIHlvdSBwbGVhc2UgZGVzY3JpYmUgdGhlIGl0ZW1zIGhlcmU/CgpJIGNhbiBz
cGVjaWFsaXplIHRoZSBkZXNjcmlwdGlvbjogIlBoYW5kbGUgdG8gdGhlIHJpZnNjIGZpcmV3YWxs
IGRldmljZSB0byBjaGVjayBhY2Nlc3MgcmlnaHQuIgoKb3RoZXJ3aXNlIGRlc2NyaWJlZCBpbiBh
Y2Nlc3MtY29udHJvbGxlcnMvYWNjZXNzLWNvbnRyb2xsZXJzLnlhbWwsIHNlZSBhbHNvIGJpbmRp
bmdzL2J1cy9zdCxzdG0zMm1wMjUtcmlmc2MueWFtbAoKPgo+PiArICBzdCxzeXNjZmc6Cj4+ICsg
ICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQo+PiArICAg
IGRlc2NyaXB0aW9uOiBQaGFuZGxlIHRvIHRoZSBTWVNDT04gZW50cnkgcmVxdWlyZWQgZm9yIGNv
bmZpZ3VyaW5nIFBDSWUKPj4gKyAgICAgIG9yIFVTQjMuCj4gV2h5IGlzIGEgcGhhbmRsZSByZXF1
aXJlZCBmb3IgdGhpcyBsb29rdXAsIHJhdGhlciB0aGFuIGRvaW5nIGl0IGJ5Cj4gY29tcGF0aWJs
ZT8KCnRoZSBwaGFuZGxlIGlzIHVzZWQgdG8gc2VsZWN0IHRoZSBzeXNjb25mIFNvQyBjb25maWd1
cmF0aW9uIHJlZ2lzdGVyIApkZXBlbmRpbmcgb24gdGhlIFBDSWUvVVNCMyBtb2RlIChzZWxlY3Rl
ZCBiecKgeGxhdGUgZnVuY3Rpb24pLCBzbyBpdCdzIApub3QgbGlrZSBhIGxvb2t1cCBoZXJlLiBU
aGlzIHN5c2NvbmYgcmVnaXN0ZXIgaXMgYWxzbyB1c2VkIGZvciBvdGhlciAKc2V0dGluZ3Mgc3Vj
aCBhcyB0aGUgUExMLCBSZWZlcmVuY2UgY2xvY2sgc2VsZWN0aW9uLCAuLi4KCj4KPj4gKwo+PiAr
ICBzdCxzc2Mtb246Cj4+ICsgICAgdHlwZTogYm9vbGVhbgo+IGZsYWcsIG5vdCBib29sZWFuLCBm
b3IgcHJlc2VuY2UgYmFzZWQgc3R1ZmYuIEFuZCBpbiB0aGUgZHJpdmVyLAo+IHMvb2ZfcHJvcGVy
dHlfcmVhZF9ib29sL29mX3Byb3BlcnR5X3ByZXNlbnQvLgoKb2sKCj4KPj4gKyAgICBkZXNjcmlw
dGlvbjoKPj4gKyAgICAgIEEgYm9vbGVhbiBwcm9wZXJ0eSB3aG9zZSBwcmVzZW5jZSBpbmRpY2F0
ZXMgdGhhdCB0aGUgU1NDIGZvciBjb21tb24gY2xvY2sKPj4gKyAgICAgIG5lZWRzIHRvIGJlIHNl
dC4KPiBBbmQgd2hhdCwgbWF5IEkgYXNrLCBkb2VzICJTU0MiIG1lYW4/ICJDb21tb24gY2xvY2si
IGlzIGFsc28gYSBiaXQgb2YgYQo+ICJsaW51eGlzbSIsIHdoYXQgZG9lcyB0aGlzIGFjdHVhbGx5
IGRvIGluIHRoZSBoYXJkd2FyZSBibG9jaz8KClNTQyBmb3IgU3ByZWFkIFNwZWN0cnVtIENsb2Nr
aW5nLiBJdCBpcyBhbiBoYXJkd2FyZSBzZXR0aW5nIGZvciB0aGUgMTAwTWh6IFBDSWUgcmVmZXJl
bmNlIGNvbW1vbiBjbG9jaywKSSB3aWxsIHJlcGhyYXNlIHRoZSBkZXNjcmlwdGlvbgoKPgo+PiAr
Cj4+ICsgIHN0LHJ4LWVxdWFsaXplcjoKPj4gKyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1s
Iy9kZWZpbml0aW9ucy91aW50MzIKPj4gKyAgICBtaW5pbXVtOiAwCj4+ICsgICAgbWF4aW11bTog
Nwo+PiArICAgIGRlZmF1bHQ6IDIKPj4gKyAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgIEEgMyBi
aXQgdmFsdWUgdG8gdHVuZSB0aGUgUlggZml4ZWQgZXF1YWxpemVyIHNldHRpbmcgZm9yIG9wdGlt
YWwgZXllIGNvbXBsaWFuY2UKPj4gKwo+PiArICBzdCxvdXRwdXQtbWljcm8tb2htczoKPj4gKyAg
ICBtaW5pbXVtOiAzOTk5MDAwCj4+ICsgICAgbWF4aW11bTogNjA5MDAwMAo+PiArICAgIGRlZmF1
bHQ6IDQ5NjgwMDAKPj4gKyAgICBkZXNjcmlwdGlvbjoKPj4gKyAgICAgIEEgdmFsdWUgcHJvcGVy
dHkgdG8gdHVuZSB0aGUgU2luZ2xlIEVuZGVkIE91dHB1dCBJbXBlZGFuY2UsIHNpbXVsYXRpb25z
IHJlc3VsdHMKPj4gKyAgICAgIGF0IDI1QyBmb3IgYSBWRERQPTAuOFYuIFRoZSBoYXJkd2FyZSBh
Y2NlcHRzIGRpc2NyZXRlIHZhbHVlcyBpbiB0aGlzIHJhbmdlLgo+PiArCj4+ICsgIHN0LG91dHB1
dC12c3dpbmctbWljcm92b2x0Ogo+PiArICAgIG1pbmltdW06IDQ0MjAwMAo+PiArICAgIG1heGlt
dW06IDgwMzAwMAo+PiArICAgIGRlZmF1bHQ6IDgwMzAwMAo+PiArICAgIGRlc2NyaXB0aW9uOgo+
PiArICAgICAgQSB2YWx1ZSBwcm9wZXJ0eSBpbiBtaWNyb3ZvbHQgdG8gdHVuZSB0aGUgU2luZ2xl
IEVuZGVkIE91dHB1dCBWb2x0YWdlIFN3aW5nIHRvIGNoYW5nZSB0aGUKPj4gKyAgICAgIFZsbywg
VmhpIGZvciBhIFZERFAgPSAwLjhWLiBUaGUgaGFyZHdhcmUgYWNjZXB0cyBkaXNjcmV0ZSB2YWx1
ZXMgaW4gdGhpcyByYW5nZS4KPj4gKwo+PiArcmVxdWlyZWQ6Cj4+ICsgIC0gIiNwaHktY2VsbHMi
Cj4+ICsgIC0gY29tcGF0aWJsZQo+PiArICAtIGNsb2Nrcwo+PiArICAtIGNsb2NrLW5hbWVzCj4+
ICsgIC0gcmVnCj4+ICsgIC0gcmVzZXRzCj4+ICsgIC0gcmVzZXQtbmFtZXMKPj4gKyAgLSBzdCxz
eXNjZmcKPiBUaGUgb3JkZXIgaGVyZSBzaG91bGQgcmVmbGVjdCB0aGUgb3JkZXJpbmcgaW4gYSBu
b2RlLCBzbyBjb21wYXRpYmxlIGFuZAo+IHJlZyBmaXJzdCwgcmF0aGVyIHRoYW4gc29ydGVkIGFs
cGhhbnVtZXJpY2FsbHkuCgpvawoKPj4gKwo+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNl
Cj4+ICsKPj4gK2V4YW1wbGVzOgo+PiArICAtIHwKPj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGlu
Z3MvY2xvY2svc3Qsc3RtMzJtcDI1LXJjYy5oPgo+PiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4+ICsgICAgI2luY2x1ZGUgPGR0LWJp
bmRpbmdzL3Jlc2V0L3N0LHN0bTMybXAyNS1yY2MuaD4KPj4gKwo+PiArICAgIGNvbWJvcGh5OiBw
aHlANDgwYzAwMDAgewo+IFlvdSBjYW4gZHJvcCB0aGUgbGFiZWwgaGVyZSwgaXQgYWluJ3QgdXNl
ZCBieSBhbnl0aGluZy4KCm9rCgp0aGFua3MsCkNocmlzdGlhbgoKPgo+IENoZWVycywKPiBDb25v
ci4KPgo+PiArICAgICAgICBjb21wYXRpYmxlID0gInN0LHN0bTMybXAyNS1jb21ib3BoeSI7Cj4+
ICsgICAgICAgIHJlZyA9IDwweDQ4MGMwMDAwIDB4MTAwMD47Cj4+ICsgICAgICAgICNwaHktY2Vs
bHMgPSA8MT47Cj4+ICsgICAgICAgIGNsb2NrcyA9IDwmcmNjIENLX0JVU19VU0IzUENJRVBIWT4s
IDwmcmNjIENLX0tFUl9VU0IzUENJRVBIWT47Cj4+ICsgICAgICAgIGNsb2NrLW5hbWVzID0gImFw
YiIsICJrZXIiOwo+PiArICAgICAgICByZXNldHMgPSA8JnJjYyBVU0IzUENJRVBIWV9SPjsKPj4g
KyAgICAgICAgcmVzZXQtbmFtZXMgPSAicGh5IjsKPj4gKyAgICAgICAgc3Qsc3lzY2ZnID0gPCZz
eXNjZmc+Owo+PiArICAgICAgICBhY2Nlc3MtY29udHJvbGxlcnMgPSA8JnJpZnNjIDY3PjsKPj4g
KyAgICAgICAgcG93ZXItZG9tYWlucyA9IDwmQ0xVU1RFUl9QRD47Cj4+ICsgICAgICAgIHdha2V1
cC1zb3VyY2U7Cj4+ICsgICAgICAgIGludGVycnVwdHMtZXh0ZW5kZWQgPSA8JmV4dGkxIDQ1IElS
UV9UWVBFX0VER0VfRkFMTElORz47Cj4+ICsgICAgfTsKPj4gKy4uLgo+PiAtLSAKPj4gMi4zNC4x
Cj4+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
