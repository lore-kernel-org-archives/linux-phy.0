Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D57A606A338
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sED1s/hv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=X6PkNa0G;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=TaIpmkX9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pfeSVbDjYkHEmhSViiwezw8f/6Bu9+3UKnTQbAHjkDE=; b=sED1s/hv6A7h2JbJM5Wr4EFlBw
	fU5vyGKmQkkj9QYQD6BcPn6XBcpDbP5MmboSd9xRd7DfaghyL4WOp5QMaohkiWoOumlQhCybzBkVf
	z0h6b+kzO46ciRZTvBamwNV+tLICbaRMiTI3TvTpr0jm9xR8/n+W+1x9EMboHUetkMwmI2JYXhAz5
	9nhspYow+4UvB6tqyGX3XjknHDZw5kTWqLEOIC7bE1lNCJ1YiKEknBwTeua2ss6eWRHWOX4O+tmRJ
	fKc8WDRa2PRKPm5RqGvetLa+ITdm3H0y4GtJUWaw2GQ/yIYHKBMpGn+YwbYHHUui/aDeHUvnvfFlZ
	AU1SCiFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQs1-00000009JmH-1Chl;
	Thu, 12 Nov 2026 09:13:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQrz-00000009Jln-0ujq
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:13:24 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AC2ZaNw597366
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 09:13:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MCNJh8pT8rOgmjUfJj9nAXCThtADkidlGo8htqWWKYk=; b=X6PkNa0G4dWR3RJS
	1blrDUwv3ESpM8Vby94Lk9zpjM87n/uG+mc/ixzSJ95OKewH04OEXbPE2z0vSqp3
	5DnNFrxPsGKHR6ecQZoZMqoRPV60QZy8guioyaxyw23+tM6j5oXXQJkY9zZfYeWf
	rzN8iCmwCRKOELZ6+g5ngOy+yQVAgTlx8n/oqDYkUz0flHxSbckjsiZ1uYUTkFqp
	Nj7xsuoxrJR1QDC7T4bnIbZ6AtEP5EG09rU2QkyNg9AZlYzpXS0GZTG7+fSWfYXV
	cny444QgDXfb6njHMRQROZFLxizybqj8o4TtS1vvEoaZKxdxVwfoUjKWggZXdk4q
	AsRBzQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hvt1540ek-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 09:13:22 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8b32efd7ec4so3665110b3a.3
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 01:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794474801; x=1795079601; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MCNJh8pT8rOgmjUfJj9nAXCThtADkidlGo8htqWWKYk=;
        b=TaIpmkX9RV7GUpjuJ2EBlpfOkLHdv/kr787j0W/jwLE/1zBieBefUvRCNl+F9X/bN0
         vLQp0ur1Zzd1I3Xp0erLx8QiEhu+6rmioOAaPTJSddDVxy2K7RmQYvwJ5aq+WRFyoJWs
         UesTqj5DFIpSM1D1A0IRnp85ZeTatvglnabpw03qb8yQUZV/9LirC/n0aYVSlx+v57bi
         m1LWnXdwwzliBG2DVgS2qsy9oezSi3pYd2KvpHyHlMqs0El2vX93URoAUMe6CgI434+F
         NKymnCB65I94idhVLGRXFcBLdIqwY2Fj6Otq72S0RpdYSFxZSe+JQbYHopWcz/Gl+x06
         QZmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794474801; x=1795079601;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MCNJh8pT8rOgmjUfJj9nAXCThtADkidlGo8htqWWKYk=;
        b=dssME1/WRj0rA50jpQceNDGblktXhe5q6BtubuwD4aqnsSXNEiEGuRrkCYDqJhQ10B
         eKkymMwe0I56DDccHD950hvA54SArRKUJU710qYOrEgC3G8jYL334SNh9DkpM+FDDYF9
         IzDSwOF4qd3X10WBX8btnPNapmxvcU87hWoS7/rP5ftXk0lhQhKFUyrHZuO3lP0+FOGT
         p2H2bXTxnTTjXuZhZbVWARVEdJaOc4y9A82yvll5rC4RUX7VjudeVXP0t2iv5bb+xBTA
         V/wqxNRqIk7Muv7uiFAtVOvQ8VZCTQnlg+LltaEQbuJ3k/1K6ew6JmLG/l+t4eqODPnv
         z/zw==
X-Forwarded-Encrypted: i=1; AL+hErG1DUVK0U+kxyS6NfACldwrECVCbg92jnwyJLaRQpltaDfL5dP1IHkTp4Kl7560FxFw8hIXbERGk+E=@lists.infradead.org
X-Gm-Message-State: APuU4Z9OycsWB11d0sBgD7oshqmRkNUVVTzr0V3RjOMiG0J1hmxoF/J3
	J/MdRegDCmbERU1N+xhZGVNDXtGg9ZxCCy2oEBlQZXIBbQtNrY59q6kIkhsHbNCioo55dh10Vbp
	I1dQcYo/cfucAQY1fJBoTaf9m/ZTjIDeeHe2XXpSTMDpum8HwGRuwzoQYL7t4yrnDJaWp
X-Gm-Gg: AYBFou01xARvmXnmM32OfcPDO9ONFTb+BhFgD5ALmYOKMxbuZRUxrpmPX3CCApkZavo
	ZZOEUSZkEhqCp2wi2M4IZEWYtrrbBU8cqDv98lEJnHNATmoDQbl6VwnR3jNSfH++oVCoZxG2H9Z
	ozEv3fWc5MXiijM63b+lkBPJ7glGlO7t0QjGHy0q7u9B8lLFU+/J9pxHeVzIN764Q8vsp4QbuJq
	74ks3Ln/DgTUpDZpl2trjMm0+Pg5mjMzbQER9yqJF9g8YaRFzDWGnA7SVUpgr/O0pMU/4TT8MnO
	o5slXuvMBe3uxcQzpEZarTbXHYnV8krRIO1aPJOGtyLwT9sY9cB/6ff8SjEcPkNLnSnpRns+cLZ
	wPP0r5EXo2oCUHUO06Vtn7wWMYbUaGUGqghMYFFd9zBmuCumSF2oA+2X4bx55zOALo4Eyx71kUD
	xSgU2OXsTNQxoSC2GGriu4KcVbOHr1JdFtJ77FwHPbmQ==
X-Received: by 2002:a05:6300:6684:b0:3eb:abb7:f92c with SMTP id adf61e73a8af0-3f2fd69cff4mr5299819637.22.1794474801113;
        Thu, 12 Nov 2026 01:13:21 -0800 (PST)
X-Received: by 2002:a05:6300:6684:b0:3eb:abb7:f92c with SMTP id adf61e73a8af0-3f2fd69cff4mr5299796637.22.1794474800616;
        Thu, 12 Nov 2026 01:13:20 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8baa7bf82b1sm3233448b3a.8.2026.11.12.01.13.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2026 01:13:19 -0800 (PST)
Message-ID: <dcc4d7a7-6408-48c4-8fd3-af96519fbd72@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 14:43:15 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB Power
 leakage issue
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20261112-smb-repeater-power-leakage-v2-1-0f8ee55c4962@oss.qualcomm.com>
 <avWB6_hSarfdJV5-@parshuram>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <avWB6_hSarfdJV5-@parshuram>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEyMDAzNiBTYWx0ZWRfX65Fnz2q6Dxdz
 lYScASc/uAwKfDdm42JK6gCYN48F+f/z7ae3gmZhXvq6+bKtrlXiftPG4pXq4GK0lGTsbNatudD
 x6WUBK9UwgjeBS9+SEDubCoVX7RQpkc=
X-Authority-Analysis: v=2.4 cv=Yrya1IYX c=1 sm=1 tr=0 ts=6af58332 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=QX4gbG5DAAAA:8 a=E76pol0VjYxlbc1R3GIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: zWZioRwDhgaKxIqEmxcl0SGpLO5k6v0m
X-Proofpoint-ORIG-GUID: zWZioRwDhgaKxIqEmxcl0SGpLO5k6v0m
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEyMDAzNiBTYWx0ZWRfX/nMVrxTJ8lIj
 jzb2MLaYStoFgH+yiF9+rjIFRV8D1hsWOdsSdFwh6qPNIfu+Si0JuA0IpEu72p1GKecIDMWcOXY
 aGjAU71YIHzr/JlJ9rm/jjOWCQbs/DGD1cD/22GnKO8n9KzQjsx2VFL/5lvNwhaeyJyf5FJx4ce
 0bArjpSMtcug0XvmbHecsH2raBpdygmJfX+eTDDu/MFtMpOAGF3NLKkOLWpGUc4ea/tSshJYa6c
 eDuFtr8o+FdkMgeTAfzWu0XZn3pNHGOhhv8EZnqcLS4i6aR8o+i8vYXmfrH03XMF1cto2O1tojg
 rCq79xPnO9mn37fzVSpA11c4jiMa6Axp7mZ00+4P4qslHEYWWdktBcimDIcN6Y12LPusBrnP87B
 QNGkN4N5Au6fYBNTlGnpNPO3eMoHAf46H0DYsUL11eoIUWx8GlOi3TM1iEnb680/JyXaiiCL75h
 h/INaBnoFLdejwwrhsg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-12_01,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611120036
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_011323_376835_89DE202E 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CgpPbiAxMS8xMi8yMDI2IDI6MzcgUE0sIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMTItMTEtMjYs
IDE0OjA3LCBLcmlzaG5hIEt1cmFwYXRpIHdyb3RlOgo+PiBPbiBHbHltdXIsIGl0IGlzIG9ic2Vy
dmVkIHRoYXQgYWx0aG91Z2ggdGhlIGV4aXQgY2FsbCBpcyBkb25lLCB0aGVyZSBpcyBhCj4+IHBv
d2VyIGxlYWthZ2Ugc2VlbiBvbiBTTUIyMzcwIGNoYXJnZXIgKHdoaWNoIGVtYmVkcyB0aGUgZVVT
QjIgbW9kdWxlIGFzCj4+IHdlbGwpLiBBcyBwZXIgcmVjb21tZW5kYXRpb24gb2YgSFcgdGVhbSwg
ZGlzYWJsZSB0aGUgcmVwZWF0ZXIgZHVyaW5nIHRoZQo+PiBleGl0IGNhbGwgdG8gcHJldmVudCB0
aGlzIHBvd2VyIGxlYWthZ2UuCj4+Cj4+IFJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25y
YWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+Cj4+IFJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNh
ZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgo+PiBSZXZp
ZXdlZC1ieTogQWJlbCBWZXNhIDxhYmVsLnZlc2FAb3NzLnF1YWxjb21tLmNvbT4KPj4gU2lnbmVk
LW9mZi1ieTogS3Jpc2huYSBLdXJhcGF0aSA8a3Jpc2huYS5rdXJhcGF0aUBvc3MucXVhbGNvbW0u
Y29tPgo+PiAtLS0KPj4gQ2hhbmdlcyBpbiB2MjoKPj4gLSBSZWJhc2VkIG9uIHRvcCBvZiBwaHkt
bmV4dCBzaW5jZSBbMV0gcmVtb3ZlcyB0aGUgYmFzZSB2YXJpYWJsZSBpbiBycHRyIHN0cnVjdAo+
PiAtIEtlcHQgdGhlIFJCIFRhZ3MgaW50YWN0IHNpbmNlIGl0cyBhIHJlYmFzZQo+Pgo+PiBMaW5r
IHRvIHYxOgo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA5MTctc21iLXJlcGVh
dGVyLXBvd2VyLWxlYWthZ2UtdjEtMS02ZDczMTFjM2MwM2VAb3NzLnF1YWxjb21tLmNvbS8KPj4K
Pj4gQ29tcGlsZSB0ZXN0ZWQgdjIuCj4+Cj4+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjYwNzIxMDkzNjI2Ljk2MjY0LTEwLWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29s
bGFib3JhLmNvbS8KPj4gLS0tCj4+ICAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVz
YjItcmVwZWF0ZXIuYyB8IDIgKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
Cj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1ldXNiMi1y
ZXBlYXRlci5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVwZWF0ZXIu
Ywo+PiBpbmRleCA4OWJjMWM4OWZjODUuLjYwN2I1YTVhMTcxMyAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVwZWF0ZXIuYwo+PiArKysgYi9kcml2
ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1ldXNiMi1yZXBlYXRlci5jCj4+IEBAIC0yMjcsNyAr
MjI3LDkgQEAgc3RhdGljIGludCBldXNiMl9yZXBlYXRlcl9zZXRfbW9kZShzdHJ1Y3QgcGh5ICpw
aHksCj4+ICAgc3RhdGljIGludCBldXNiMl9yZXBlYXRlcl9leGl0KHN0cnVjdCBwaHkgKnBoeSkK
Pj4gICB7Cj4+ICAgCXN0cnVjdCBldXNiMl9yZXBlYXRlciAqcnB0ciA9IHBoeV9nZXRfZHJ2ZGF0
YShwaHkpOwo+PiArCXN0cnVjdCByZWdtYXAgKnJlZ21hcCA9IHJwdHItPnJlZ21hcDsKPj4gICAK
Pj4gKwlyZWdtYXBfd3JpdGUocmVnbWFwLCBFVVNCMl9FTl9DVEwxLCAwKTsKPj4gICAJcmV0dXJu
IHJlZ3VsYXRvcl9idWxrX2Rpc2FibGUocnB0ci0+Y2ZnLT5udW1fdnJlZ3MsIHJwdHItPnZyZWdz
KTsKPiAKPiBUaGlzIGZhaWxzIHRvIGJ1aWxkOgo+IAo+IGRyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLWV1c2IyLXJlcGVhdGVyLmM6IEluIGZ1bmN0aW9uIOKAmGV1c2IyX3JlcGVhdGVyX2V4
aXTigJk6Cj4gZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVwZWF0ZXIuYzoy
MzE6MjQ6IGVycm9yOiDigJhzdHJ1Y3QgZXVzYjJfcmVwZWF0ZXLigJkgaGFzIG5vIG1lbWJlciBu
YW1lZCDigJhiYXNl4oCZCj4gCgpIaSBWaW5vZCwKCiAgV2hlbiBbMV0gZ290IG1lcmdlZCBpdCBy
ZW1vdmVkIHRoZSBiYXNlIHBvaW50ZXIuIEhlbmNlIHYxIG9mIHRoaXMgCnBhdGNoIGZhaWxzIHdp
dGggZXJyb3Igc2F5aW5nIHRoYXQgYmFzZSBpcyBub3QgcHJlc2VudC4gQnV0IHYyIGhhcyBiZWVu
IApyZWJhc2VkLiBUaGlzIHYxIGdpdmVzIHRoZSBpc3N1ZSBidXQgbm90IHYyLiBJIHNlZSB0aGF0
IHlvdSBoYXZlIGFwcGxpZWQgCnYxLiBDYW4geW91IHJldmVydCB0aGF0IGFuZCB0YWtlIGluIHYy
LgoKWzFdOiAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNzIxMDkzNjI2Ljk2MjY0
LTEwLWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbS8KClJlZ2FyZHMsCkty
aXNobmEsCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
