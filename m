Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33C3EC43458
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jun 2026 05:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7cadZLIeG0HrRz0YN/at7bplHNS1VF22yaRvMDFfjM=; b=iKVcz9enEFnmRJ
	vtZ6OuMUCuBcf/ptnL3a71hAmNxBI0c4Eo8whJd7Qed7lvEFBRFF3mTgSuR23cPkaqa9G3/JflmNT
	GO9zx40KziugNPCZrI9xXkKPkebKk79sXhYYGVO5LOm3kXmbSbscXoj24e6DdFJA4zHk8w9EjS46k
	zUUsrIrhOGxc8wsIFn4TcNG/RqEWKgSYnkDXsmgkG/hme5kps8ZzltcxhiD5hdc9orUuXVv3TFZHy
	AN6u0NR6YfaCyX3N4KWLIRtbTGw4ecxYbXaAqfcvyz74NQ3TXvXzGP8xzgvDe5dvASH35duu2T0x1
	DcMQi9RDdmGT5JE1kAkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we4yj-0000000DjNk-30RA;
	Mon, 29 Jun 2026 05:56:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we4yh-0000000DjMr-0K5R
	for linux-phy@lists.infradead.org;
	Mon, 29 Jun 2026 05:56:20 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65T4NTFm1777366
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 05:56:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ObRr7+TQxnh3EoKEOea2q5sk6vcr6Ss67rNgubqe308=; b=V8SIJCGAG8gjQeVs
	2wrcXgTGGOVNrLSI41ZybKQkq5KsUqwpoXzW8lQcj38eTmEiKLWo2U06HsYZTDRW
	USK2SyxOwAWLfXsX2b4LYtR/QBa/FqDvHiZU17+xbixG7NBNHuj3PVhh8xejVeNI
	4hqfkGzEGdzFVjFW94ihKRYBTKqc+zxcQKBk7TbZeQJOhK9cpPdXR30Xv5saQXv0
	SOAEM+5Mp9dl6HkDU7/02cSP1h0kM86dGDAg6zWv6MdQyuRuHtrBeqDu1ke5Pq+Y
	FmNVTMv8tz68yB3d3hpb+bg19TVqCSrS/oHgtSZ0TqPGaGe/LZSmWY1iAqEF1zHc
	umkehQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f26x8mtnc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 29 Jun 2026 05:56:17 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30c011c7cb9so7401142eec.1
        for <linux-phy@lists.infradead.org>; Sun, 28 Jun 2026 22:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782712577; x=1783317377; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ObRr7+TQxnh3EoKEOea2q5sk6vcr6Ss67rNgubqe308=;
        b=KIoaFbGmKKrBTCujLcmyaKGMM7fBLLGbsnCdaca7cd+tfFA2tQ44etZZiNbn7S72Ea
         +zko9VecgA07RMAY62zByWu962aL1CH+3f4klZQiqOSEvPrM28dRG5XBhcVS35l1nfL4
         duQzgk0TVjPMdHEdPbxrmrju+wLz72h8IfuPtWzqxxh2s1+hrPBgc+2G9CpEvDyirkvu
         iqGb7DH93j/yuyPJwzh2+lPLefyec4WhYi8+4uOCV2eRTNAFvIqOCgHpQHzZ4RhIpWXM
         i3prfBJ4wGzLxyAAXyXFUjEg+VlaxGZJbHkPLkMJ8J5GlwiqEA7bD0o9TNzqYVVDG2gG
         2qUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782712577; x=1783317377;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ObRr7+TQxnh3EoKEOea2q5sk6vcr6Ss67rNgubqe308=;
        b=DqIGj0pCARmkmG7lT895rQCb8Mo+VcdaiyGdJp5eUMaVeM6xCQ3cjdAY0xPuqaLj08
         arFaiz0AIGcoGlfb3cCcvGOhbfEYOOVxnz/ssSJnBDWC3jc4bFMyPuEI8HahERzscK79
         PLkt4H4rrTX11+Lnwu7wm8J9DsGCBrP2v3XmyHihCm0JXigfZBxS0Ygu87EytJrLTIMv
         IIJaQaeXCymxjdUI5cyZDb+LZtuh/+trdPb6xQx828qOxhljuJjtuvLYYpBvtKColIjr
         /I3W/7QnU16IDUAqL5gRoxNFPQspZwTlij132Eb2jJAsHMqLCJ0ab5EnyIIDSuOlBusy
         a1XQ==
X-Forwarded-Encrypted: i=1; AHgh+Rrbq28jnupJw1/vJ/kqGTX84RQcFEqbI5nZuvUUQgpR+oYoKPREfZ7Q5HvCddtg19z6NdnjWkkqIeI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHIKY6g6/gG0bxZLFmVeaD2sd+HMNYQ+TxYYIaJekDI1KuIOLJ
	PXRGfhZMj8RKQHOcU1rSQgpF2Pcbm8bTEMXwrABZIFIEqmMdX5DTByMkYvHeDJnWXrtzZXvEDWl
	a/X0slyjvJUdlplQc3g0ULAdDLNkX4V/vvm/HeZRYgmvfSsiarkuj6O7w7khFtJKMrVaL
X-Gm-Gg: AfdE7ckmBlo9mCDA4r16g7gK7BM3Y/sUorPFxfbRwud85+Gz2bo06Pbxf82vYyUkyX8
	K9LJdQDgwKeCmFb/JHV027Grk4PQEARokXR3BR+hr6qYak6hgKi43+xdrQC0vs7/CGuNScPYgYq
	xuObcTwR6qAEi2L268UULJkKve+lIlLHVirK5YHajeTKCzKooI5mUXI31Wwkpgmkfsk1jn2nop/
	lu/Zej7uB4VM5aDfSmaM+JeTH5eNKtd1+qdkIVG0WUYSpPO9t2ozvBumQtzmgENmWm5EPUQe/tW
	Y/D0nzsub9xiS5LOuR+sm0kPUW8dJAjgdDCMs4WcrytdRxiXnAtS6jmHMMK910/wOGFxj1XFc3s
	oMJgYMUTtI45KRVItnGQjcYK1gPzw/oVDzpVG8PVEoPaXDTheaojXv0HY9w==
X-Received: by 2002:a05:7300:caa:b0:30c:ab4d:382e with SMTP id 5a478bee46e88-30cab4d3fe1mr8008554eec.37.1782712576813;
        Sun, 28 Jun 2026 22:56:16 -0700 (PDT)
X-Received: by 2002:a05:7300:caa:b0:30c:ab4d:382e with SMTP id 5a478bee46e88-30cab4d3fe1mr8008519eec.37.1782712576246;
        Sun, 28 Jun 2026 22:56:16 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30c9d39e7besm34579579eec.26.2026.06.28.22.56.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 22:56:15 -0700 (PDT)
Date: Sun, 28 Jun 2026 22:56:13 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 5/9] phy: qcom: qmp-pcie: Refactor pipe clk
 register and parse_dt helpers
Message-ID: <akII/X8OWO5XN9Gw@hu-qianyu-lv.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-5-269cd73cc5d1@oss.qualcomm.com>
 <ipzncrxi3x45fc6tz5xb7frxt62zmg4gwr25xmvzghlbt5miio@7eavln3cydfa>
 <fkcidw46hdsrrufxhhkk66mmitxnswmghpypyvtmax3x6vmnlp@2er6xgymxdf2>
 <ol436i3oqgdns74dliw72qns22gqfgygm6qkz7mo4g7oiywlsg@johrhdyv4rqx>
 <ahk57lEoWQtkGsJt@hu-qianyu-lv.qualcomm.com>
 <1bbccb16-b91e-4116-a4cd-213a46978fa1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1bbccb16-b91e-4116-a4cd-213a46978fa1@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA0OCBTYWx0ZWRfX2gyK1vM/EjSV
 C3zYdpAKTyTxzODXIf6jLBIHOeTQQ6vPepeOmWXge+0XiqyiP1lFmBSiTuZ0VcBowJ+JuclcQfu
 RSbHLgtsH8G+MDjahtZl/HlX/wFPYwI=
X-Authority-Analysis: v=2.4 cv=D+N37PRj c=1 sm=1 tr=0 ts=6a420901 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=w56qM-ApfueYzBeFdjAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: DhOlV50Ltc5yaGrm_ld2_aWKPQYUYiXo
X-Proofpoint-ORIG-GUID: DhOlV50Ltc5yaGrm_ld2_aWKPQYUYiXo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA0OCBTYWx0ZWRfX5o4smeVwSh3O
 mNzrAkOWYVGzG4/PyVk6VfOTCm1cSbSV9zi60rbx/FUxx2aKr2c7FcB6r9CDS/NFyi745szdxYU
 K32qhO+WA3Fp6Sn5+KpJF//N6WHz9q/wXuwRRX8PyWahY9xDmbXE15PNAkJWPAGVcxLbYUhI/U4
 4DwQ7xzsKiQg4CTL4UT2Cvge7paVXdK7uJz+gA+qPZkA8loWHtOqWIUAs3ijvLF23nhoCdELsWD
 8XyKrxf32UItTwHSDgCUMDWTY3VnPFrOWTpsHmIq5OX1pkb7gqKjNZdPlwvikbHXqFMdCi09+KR
 XkmfnTj6EwDTJIoarsgG3vv7Wf2XpPzjIEs8MhU8EbjkWrY/cxPGAhQSACMOJBJHe+LipdjJRO3
 3IzTKbZT0Xm60IlU7FVRp2yU+EET06vUkHo/2ki16JR9j1SE45txwJzW3mGEEJLgo4HVaQeZvim
 Y8g4Ij7NcHzcVsrf+5A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260628_225619_233956_F12BF02E 
X-CRM114-Status: GOOD (  28.43  )
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

T24gVHVlLCBKdW4gMTYsIDIwMjYgYXQgMDQ6MDU6NDNQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiA1LzI5LzI2IDk6MDIgQU0sIFFpYW5nIFl1IHdyb3RlOgo+ID4gT24gVGh1LCBN
YXkgMjgsIDIwMjYgYXQgMDQ6NDg6MjRQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToK
PiA+PiBPbiBGcmksIE1heSAyMiwgMjAyNiBhdCAwNDoyNzozNVBNICswNTMwLCBNYW5pdmFubmFu
IFNhZGhhc2l2YW0gd3JvdGU6Cj4gPj4+IE9uIFdlZCwgTWF5IDIwLCAyMDI2IGF0IDA3OjI1OjAx
UE0gKzAzMDAsIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gPj4+PiBPbiBNb24sIE1heSAxOCwg
MjAyNiBhdCAxMDo0NzoxNlBNIC0wNzAwLCBRaWFuZyBZdSB3cm90ZToKPiA+Pj4+PiBTb21lIFFN
UCBQQ0llIFBIWSBoYXJkd2FyZSBibG9ja3MgY2FuIGJlIHNwbGl0IGludG8gbXVsdGlwbGUgc3Vi
LVBIWXMKPiA+Pj4+PiB1bmRlciBhIHNpbmdsZSBEVCBub2RlLCBlYWNoIHJlcXVpcmluZyBpdHMg
b3duIHBpcGUgY2xvY2sgcmVnaXN0cmF0aW9uIGFuZAo+ID4+Pj4+IERUIHJlc291cmNlIG1hcHBp
bmcuIFRoZSBjdXJyZW50IGhlbHBlcnMgYXJlIHRpZ2h0bHkgY291cGxlZCB0byBhIHNpbmdsZQo+
ID4+Pj4+IHFtcF9wY2llIGluc3RhbmNlLCB3aGljaCBwcmV2ZW50cyByZXVzZSBhY3Jvc3Mgc3Vi
LVBIWSBpbnN0YW5jZXMuCj4gPj4+Pj4KPiA+Pj4+PiBSZWZhY3RvciBfX3BoeV9waXBlX2Nsa19y
ZWdpc3RlcigpIGFzIGEgZ2VuZXJpYyBoZWxwZXIgYW5kIHJlZHVjZQo+ID4+Pj4+IHBoeV9waXBl
X2Nsa19yZWdpc3RlcigpIHRvIGEgdGhpbiB3cmFwcGVyIGFyb3VuZCBpdC4gU2ltaWxhcmx5LCBl
eHRyYWN0Cj4gPj4+Pj4gcW1wX3BjaWVfcGFyc2VfZHRfY29tbW9uKCkgZnJvbSBxbXBfcGNpZV9w
YXJzZV9kdCgpIHRvIGhvbGQgdGhlIHJlZ2lzdGVyLQo+ID4+Pj4+IG1hcHBpbmcgYW5kIHBpcGUt
Y2xvY2sgc2V0dXAgdGhhdCB3aWxsIGJlIHNoYXJlZCBiZXR3ZWVuIHN1Yi1QSFkgaW5zdGFuY2Vz
LAo+ID4+Pj4+IHdpdGggcGlwZSBjbG9jayBuYW1lcyBwYXJhbWV0ZXJpc2VkIHBlciBpbnN0YW5j
ZS4KPiA+Pj4+Pgo+ID4+Pj4+IFRoaXMgaXMgYSBwcmVwYXJhdG9yeSBzdGVwIGJlZm9yZSBhZGRp
bmcgbXVsdGktUEhZIHN1cHBvcnQuIE5vIGZ1bmN0aW9uYWwKPiA+Pj4+PiBjaGFuZ2UgZm9yIGV4
aXN0aW5nIHBsYXRmb3Jtcy4KPiA+Pj4+Pgo+ID4+Pj4+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1
IDxxaWFuZy55dUBvc3MucXVhbGNvbW0uY29tPgo+ID4+Pj4+IC0tLQo+ID4+Pj4+ICBkcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jIHwgNzYgKysrKysrKysrKysrKysrKysr
LS0tLS0tLS0tLS0tLS0KPiA+Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDQ0IGluc2VydGlvbnMoKyks
IDMyIGRlbGV0aW9ucygtKQo+ID4+Pj4KPiA+Pj4+IEknZCBzdWdnZXN0IHNwbGl0dGluZyB0aGUg
R2x5bXVyIFBIWSB0byBhIHNlcGFyYXRlIGRyaXZlci4gT3RoZXJ3aXNlIHdlCj4gPj4+PiBlbmQg
dXAgaGF2aW5nIHRvbyBtYW55IHNpbmdsZS1wbGF0Zm9ybSwgc2luZ2xlLWRldmljZSBzcGVjaWZp
Y3Mgd2hpY2gKPiA+Pj4+IGRvbid0IGFwcGx5IHRvIG90aGVyIHBsYXRmb3Jtcy4KPiA+Pj4+Cj4g
Pj4+Cj4gPj4+IEkgZG9uJ3QgdGhpbmsgdGhhdCdzIHJlYWxseSBuZWVkZWQuIFRoaXMgc2hhcmVk
IFBIWSBjb25jZXB0IGlzIGdvaW5nIHRvIGJlCj4gPj4+IGFwcGxpY2FibGUgdG8gdXBjb21pbmcg
U29DcyBhcyB3ZWxsLiBBbmQgbW9yZW92ZXIsIHRoZSBzcGxpdCB3b24ndCBiZSBjbGVhbgo+ID4+
PiBlaXRoZXIuIFdlIHN0aWxsIG5lZWQgdG8gcmV1c2UgYSBsb3Qgb2YgY29tbW9uIGxvZ2ljIGlu
IHRoZSAncGh5LXFjb20tcW1wLXBjaWUnCj4gPj4+IGRyaXZlciBhbmQgbWF5IG9ubHkgZW5kIHVw
IGtlZXBpbmcgdmVyeSBtaW5pbWFsIGNvZGUgaW4KPiA+Pj4gJ3BoeS1xY29tLXFtcC1wY2llLWds
eW11cicuCj4gPj4KPiA+PiBUaGVuIHNwbGl0dGluZyBtYWtlcyBldmVuIG1vcmUgc2Vuc2UuIExl
dCdzIG5vdCBjbHV0dGVyIHRoZSBleGlzdGluZwo+ID4+IGRyaXZlciB3aXRoIHRvbyBtYW55IGNv
bmRpdGlvbnMgYW5kIG9wdGlvbnMuCj4gPj4KPiA+Pj4KPiA+Pj4gSWYgeW91IGFyZSBjb25jZXJu
ZWQgYWJvdXQgdGhlIGZpbGUgc2l6ZSBvZiAncGh5LXFjb20tcW1wLXBjaWUnLCB0aGVuIHdlIHNo
b3VsZAo+ID4+PiBtb3ZlIHRoZSBTb0Mgc3BlY2lmaWMgJ2NmZycgc3RydWN0cyBpbnRvIGEgc2Vw
YXJhdGUgZmlsZSBhcyB0aGF0J3Mgd2hhdAo+ID4+PiBvY2N1cHlpbmcgbWFqb3JpdHkgb2YgdGhl
IHNwYWNlLgo+ID4+Cj4gPj4gTm8sIGl0J3MgcmVhbGx5IHRoZSAnc2hhcmVkJyBwYXJ0Lgo+ID4+
Cj4gPiAKPiA+IFRvIGNvbmZpcm0sIGFyZSB5b3Ugb2theSB3aXRoIHNvbWUgY29kZSBkdXBsaWNh
dGlvbiBiZXR3ZWVuIHRoZSBuZXcKPiA+IEdseW11ci1zcGVjaWZpYyBkcml2ZXIgYW5kIHBoeS1x
Y29tLXFtcC1wY2llIGRyaXZlci4KPiAKPiBUaGF0J3MgYSBuZWNlc3NpdHksIHRvIHNvbWUgZGVn
cmVlLiBTZWUgZS5nLiBxbXAtY29tYm8gYW5kIHFtcC11c2JjIAo+CkkndmUgYWxyZWFkeSBwcm90
b3R5cGVkIGEgc2VwYXJhdGUgR2x5bXVyIGRyaXZlciwgYW5kIGl0IHR1cm5lZCBvdXQgYmV0dGVy
CnRoYW4gZXhwZWN0ZWQg4oCUIHRoZXJlJ3MgYWN0dWFsbHkgbm90IG11Y2ggZHVwbGljYXRpb24u
IFRoZSBwYXJ0cyB0aGF0IGRvCm92ZXJsYXAgYXJlbid0IGZ1bGx5IGlkZW50aWNhbCBlaXRoZXI7
IHRoZXkgdGVuZCB0byBkaXZlcmdlIG9uY2UgdGhlCkdseW11ci1zcGVjaWZpYyBoYW5kbGluZyBp
cyBmYWN0b3JlZCBpbi4KCkN1cnJlbnRseSwgSSBtZWV0IGFuIGlzc3VlIHdoZW4gdGVzaW5nIHRo
ZSBwYXRjaCwgYW5kIHdpbGwgcG9zdCBpdCBhZnRlcgpmaXhpbmcgdGhlIGlzc3VlLgoKLSBRaWFu
ZyBZdQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
