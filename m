Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394D7606A31D
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 10:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FVHQrfZ0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WnGtiMhh;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=e3S1tlJW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=p8x1a9SoQCp2VH2+kEFWMRcTNRjUbUt+fU/Wl3GMx+U=; b=FVHQrfZ0tfv+4SwnInFYDu7D4G
	/4LZ3ipsph0xoBDKrN4Glx3KUYWISmYV/gDUWb8a5fTjVDfmfxBA5QtG7yyOxMVz2BvpdD1ncIvO2
	wxiaa6XRE875VsgRViZJh2L7orpLqi6W3EYAVcXtqofqSg3gQY7/d2l8hujVmzk1vsJ3yGH0S77Vp
	k2HAAUA4nZz1DfJuwxv0BIV6OWEGMgjT+VNoCVWKj0C6efk4FrY3U2NKIwEO7ShJ4OQ9N/Bpoachk
	RJH0AU5ha4KoFeH0R7X96BbfdE6FQzBWR4JO1EnNYHWf21SQ/5qZJDfPy3f8G/o0h1GcTW07uh/v+
	HLZxbf4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLeSw-00000004Ilo-3Pwv;
	Tue, 27 Oct 2026 10:31:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLeSu-00000004IlD-1UMS
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 10:31:37 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69R9wb0n1882332
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 10:31:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Vn4pKcdJpH4mb0SDRmgSSuNabQ9IF5FHcbnz/6As7I8=; b=WnGtiMhhfsYTl8cu
	sESZNGF9KAb5/H9TX4GjXn2H9xmokH3MmRiFGZVOGWI5dVlPYbKeq7wowygry0E2
	bbvpLEu2Wl7TT0CuDDiCh0sBG5oERy0/TLgAzq6Oi6jhrVgXGtXUUXBbA0QSFp7A
	fQngbtRt8WZb9k3FG2j+KqXN2JnH2ZpSj+cBOM9foKYwx4Fui6+El9/btIoAhxiI
	u1y+cY7zRIcKLgcUFPZ6qpyTaA40S+nJjDEoTkKpMOHNWq7J6drOPD0A/YoYbwhc
	jDozwtJpXKpB1YQF++61E7wXNIuD/0TVmEKsz4LGs/zIWxnvwpk8FeCfvLmNLnJ6
	Ofw7QQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjst1g3ww-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 10:31:35 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93f33438950so962629785a.1
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 03:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793097094; cv=none;
        d=google.com; s=arc-20260327;
        b=E7A6o3k+05tnhevbdM+nXFWqr3vGKQLR6aDxxvldkqQlSbHeIt2+5DjvRUFOwdNiTS
         QnXUbFvgKSnPXH5PMaWtsCYRmzRZpiXFs3f8UPLfDVagFzEoDC1fPbQVoJsNPCgdXY12
         BsnDYQr5ExYrM5S6vyNFiCGEzlgNB1G78GJjQJJkdodXxgSAItiSK0Dcz2HKw3qvPOjU
         AoZ/BbCh0KSBdG512KlwHcaFFZUoHN1bXeFzT+0hHbW31smV+APwqM084suOkYQuRn3H
         59drcAJcGfiHns1QISup+yDAhgcZhDOOyjJS3KjRt3u92TKodyQQIGVE2fgfouccvTf1
         oCzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Vn4pKcdJpH4mb0SDRmgSSuNabQ9IF5FHcbnz/6As7I8=;
        fh=UWXb+2DtT/04dKww5w6wcNb5VU0sIK8EPw4uqu4Lqm8=;
        b=WBTb5HwhrTlKkA8OpaCEbuoaCZETnPxiu+jNjd/fahJl5AZsE2qwiNu3YAaTZVn2Za
         /oj+u9h/Sd5U/pZSiSs5NhpAthd928/Y0pJZb7ewGZQoGoIO3XNswcbiymw1nD45hEWS
         5/zFiR6S9pqatT0VWz37g45dRk4vlv1K367kWZQVuKI/MUcHtgZdykCFiKrNibrLgfN7
         BwT5+mF4o3/muy2AN3G8A05EK4dTONjHmHrqe5/rgomIoZbixG4rJZ2fmZplEamA7J72
         q0kw161RWyMa2WFdQr1BlHjOAB+DkPi+gdTGsD5vjXAxl5x74OE39S5kkqfhobW586ok
         5tNQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793097094; x=1793701894; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Vn4pKcdJpH4mb0SDRmgSSuNabQ9IF5FHcbnz/6As7I8=;
        b=e3S1tlJWe7H7ei8FjpI7JuxmhXakh+N5r9DjUbZXxrw3eBaP2iTmv3MWE4uayTkE5/
         kb5ShgPvw6XO8+r9cduWNZzDfHb87f7PgmOMGFvki4xjshF/NL28yH8/zC6SenWhtHrc
         KNaamcr+QwB2veopD5h0K4Qv8MFk99vjSKn5s4cTdbKHQxx0HyQcvbmEOCi2fzgrNPQF
         HW7DNrXeXA96qMHiGfIN2jDJECQpS/ngH34AYMJigBCWNwXAuzRDEreIhjYUbKfNmNhx
         PtAATiAJoPnqtB37Ti5NlRF0EuNsvmvC/G5NSQ4rXglYNPUPktTJ1iguPtBEt5LLMYia
         dwVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793097094; x=1793701894;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Vn4pKcdJpH4mb0SDRmgSSuNabQ9IF5FHcbnz/6As7I8=;
        b=KdkcMXUUNdGo1rxZ3SBK+YYgqqzmn+7IjJ1+EoM4K+32B5itMFy3YMA0E+sHuTWdl8
         0LEnPgjm+Yf3Iv1tq2c//xCqnT+QEfQ3922wXSd/m2SD0Xnrp+ImCjnIo/vcVoI7EQkT
         Lp9LGnRxqNxugAA/q06wjXsZTPNJbjt7JipguUlqLbP9ii7ltNCVwuCYImdwSdwZwWVZ
         W+OGToYae7vQaVrI3/EyMP2aM2vg2KDY9tUM90pDjimYHSqVZdmBCHyPEG07hbcIYwy6
         lAghgQPABZm4MahSyMeDy50IpLfjL84G3fxXpSn2R6IOmSbUfGuXnDcpmuGAAx4KTiGY
         B4mA==
X-Forwarded-Encrypted: i=1; AKwUvByq9NautNAL2RlNDZpw7kA2S8Fn+DmYMxaSvruLCDSGqeEerNdCGig662t7W/6M3L0Qb8Hg9fC74Oo=@lists.infradead.org
X-Gm-Message-State: AFq9FYLyYnVuwdw5F4p8tqfhLYYXjzuclgP66SozK9MN2vGB4v8rLZGl
	Uw0zGqZfCYIv3TCQz76H7uqSEdNm5pX9niKyXRQE7/9RiZAU20inlnVHCCh8L3rtZLdDuiDMiLN
	jI9PsdUoEkUVPPSlhAyXIVaR/uW4yMcpajzfDQXZ2QipC81KRlfu//z5arKoNoV3CndGko40MhD
	PedeZ+0qMEHSGHszz2FZPhRmKgxhp0Rj4UotfjBe8BsSA=
X-Gm-Gg: AYBFou1UZlTfioZes/7aONHjXymT8O8d3giEwxufHRgA9net/3aW2VIAq6lcDMfdAIP
	nJ8VPGdqyKOBPAbSceaZ0nPlWnhG3wisjU0zJtE21IdxZE+VNPlEzZ3SwJh2uz6rhhyRifUbrGC
	DUHD7x2DrvMfx6SM64WMSHWbh8fupJaCLcCuasWgY7KaHp0cDmYMX1ACjKgel+fXgf9zQND8wv5
	yeRTaQAO8g5dIbdZhJxY0NC+Guln4HbzLb4PjHgTwG3MUagJOAbeUBTh4Rx8DizD4nqmcnsAe0B
	G4y7Q+NcCwGlIKh2Aje60G8rPH2k
X-Received: by 2002:a05:620a:4444:b0:93f:2b65:f47 with SMTP id af79cd13be357-940ef8fce6amr1393811685a.25.1793097094428;
        Tue, 27 Oct 2026 03:31:34 -0700 (PDT)
X-Received: by 2002:a05:620a:4444:b0:93f:2b65:f47 with SMTP id
 af79cd13be357-940ef8fce6amr1393808285a.25.1793097093915; Tue, 27 Oct 2026
 03:31:33 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261023163057.775917-1-vz@kernel.org> <20261023163057.775917-5-vz@kernel.org>
 <CAFEp6-03Kqxya74Cd+hgueZ0D4xAcYNOx_R1sNqdMu2JrMBynw@mail.gmail.com>
 <378094fb-5f7f-42c6-a91f-158e2083a6cb@kernel.org> <CAFEp6-3XTotgkOKRACGLT91wUw30CgFB=44RtHnXfA6cOF7bVA@mail.gmail.com>
 <0d25a732-ccd5-4a7b-9809-93e67899b4e7@kernel.org>
In-Reply-To: <0d25a732-ccd5-4a7b-9809-93e67899b4e7@kernel.org>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 27 Oct 2026 11:31:21 +0100
X-Gm-Features: AclHuK-yJKxj98HRE0igMAKWG_vr97ZSpokaUXsIJ2z8z0rJILNsgN0-4gJfnBY
Message-ID: <CAFEp6-1fAAfG+dMsS+bK4KDjX795OXhWBSrkWZKzM4P9r7+m1g@mail.gmail.com>
Subject: Re: [PATCH 4/7] arm64: dts: qcom: sm8450: Add CAMSS device tree node
To: Vladimir Zapolskiy <vz@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, "Bryan O'Donoghue" <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-media@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
X-Authority-Analysis: v=2.4 cv=HJ1WhYtv c=1 sm=1 tr=0 ts=6ae07d87 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8 a=b2IhrCKv5-cLQgD9YOsA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 2aJ2QgTKrNLrd_SS8hc_ewp3guWLpwpo
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA0MSBTYWx0ZWRfXzDWzxoMbpX+9
 gg6N3Qxgt4a9HWZkLssg7DgCt72a/oXsH84rof91968u5Q6S9A3W2JlqbqGriHUmPi3H4X0xo9v
 kO4Vj3NcQcnyLtdEwiUZfTNzrBZxp3M=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA0MSBTYWx0ZWRfX4tmriEjHO7EP
 RM3LpNPdjX8cj8AT8zNt1uk8Ht9JmxezR/c6BF/IFix3EwAsDtibVMNWZKHvIsboQbgV3W5fX/y
 1K7pQYl/HMi+ebg7TMJtt8GxILPLE9MLThCJafPwvjYLCQfAZfBHAlxoQCalTCzEftCEqqi5SNA
 BaaE/MGdYSoa/Trd9JDuLVhjB0mr1rF69pNhgAfgtyFPEFOOnHs65G+qrLOLsvQbDrrA54Y80kC
 eP0072d2PDAd5rYTBdV/KJ+plkfYBLYFUG5x/68azQFqhZxkKHTefxZ3PHV8g/PLqxduF40ib4y
 PTcpFFR0d5liXjuzg8dPDBEFr0B8Rpb/p/fYjcoT/WMet8Ak8kkEQkGdQr0s0Xw8ZXmqM5vL6/V
 +PynAXNBPb5PHo1vh3hQ1QTyoPM44dIjlPPDRtRoEC5qqVL2krY2uddN8EyF5KbQQp/ohBVanTz
 P6M6Tvx/KIQxeoOKp4w==
X-Proofpoint-GUID: 2aJ2QgTKrNLrd_SS8hc_ewp3guWLpwpo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 spamscore=0 phishscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610270041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_033136_401950_21142EF7 
X-CRM114-Status: GOOD (  38.81  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgVmxhZCwKCgpPbiBUdWUsIE9jdCAyNywgMjAyNiBhdCAxMDo1NOKAr0FNIFZsYWRpbWlyIFph
cG9sc2tpeSA8dnpAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAxMC8yNy8yNiAxMTowNywgTG9p
YyBQb3VsYWluIHdyb3RlOgo+ID4gT24gTW9uLCBPY3QgMjYsIDIwMjYgYXQgMTE6MznigK9QTSBW
bGFkaW1pciBaYXBvbHNraXkgPHZ6QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4+Cj4gPj4gSGkgTG9p
Yy4KPiA+Pgo+ID4+IE9uIDEwLzI2LzI2IDE4OjMyLCBMb2ljIFBvdWxhaW4gd3JvdGU6Cj4gPj4+
IE9uIEZyaSwgT2N0IDIzLCAyMDI2IGF0IDY6MzHigK9QTSBWbGFkaW1pciBaYXBvbHNraXkgPHZ6
QGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4+Pj4KPiA+Pj4+IEFkZCBRdWFsY29tbSBXYWlwaW8gQ0FN
U1MgZGV2aWNlIHRyZWUgbm9kZSB0byB0aGUgcGxhdGZvcm0gZHRzaSBmaWxlLAo+ID4+Pj4gdGhl
IENBTVNTIGlucHV0IHBvcnRzIGFyZSBjb25uZWN0ZWQgdG8gb3V0cHV0IHBvcnRzIG9mIENTSVBI
WSBkZXZpY2VzLgo+ID4+Pj4KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IFZsYWRpbWlyIFphcG9sc2tp
eSA8dnpAa2VybmVsLm9yZz4KPiA+Pj4+IC0tLQo+ID4+Pj4gICAgYXJjaC9hcm02NC9ib290L2R0
cy9xY29tL3NtODQ1MC5kdHNpIHwgMTY3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4+
Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDE2NyBpbnNlcnRpb25zKCspCj4gPj4+Pgo+ID4+Pj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTg0NTAuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9zbTg0NTAuZHRzaQo+ID4+Pj4gaW5kZXggYmFiZjFhNDE5NmExLi43
ZjViMDUwMWEyM2UgMTAwNjQ0Cj4gPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
c204NDUwLmR0c2kKPiA+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTg0NTAu
ZHRzaQo+ID4+Pj4gQEAgLTMzMTAsNiArMzMxMCwxNjcgQEAgY2NpMV9pMmMxOiBpMmMtYnVzQDEg
ewo+ID4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+ID4+Pj4gICAgICAgICAgICAg
ICAgICAgfTsKPiA+Pj4+Cj4gPj4+PiArICAgICAgICAgICAgICAgY2Ftc3M6IGlzcEBhY2I2MDAw
IHsKPiA+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicWNvbSx3YWlw
aW8tY2Ftc3MiOwo+ID4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDAgMHhhY2I2
MDAwIDAgMHgxMDAwPiwKPiA+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwwIDB4
YWNiNzAwMCAwIDB4MTAwMD4sCj4gPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8
MCAweGFjYjkwMDAgMCAweDEwMDA+LAo+ID4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgPDAgMHhhY2JiMDAwIDAgMHgxMDAwPiwKPiA+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDwwIDB4YWNjNjAwMCAwIDB4MTAwMD4sCj4gPj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA8MCAweGFjY2EwMDAgMCAweDEwMDA+LAo+ID4+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgPDAgMHhhY2Y2MDAwIDAgMHgxMDAwPiwKPiA+Pj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDwwIDB4YWNmNzAwMCAwIDB4MTAwMD4sCj4gPj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICA8MCAweGFjZjgwMDAgMCAweDEwMDA+LAo+ID4+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgPDAgMHhhYzYyMDAwIDAgMHgzMDAwPiwKPiA+Pj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwwIDB4YWM3MTAwMCAwIDB4MzAwMD4sCj4g
Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MCAweGFjODAwMDAgMCAweDMwMDA+
LAo+ID4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDAgMHhhY2M3MDAwIDAgMHgy
MDAwPiwKPiA+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwwIDB4YWNjYjAwMCAw
IDB4MjAwMD47Cj4gPj4+PiArICAgICAgICAgICAgICAgICAgICAgICByZWctbmFtZXMgPSAiY3Np
ZF93cmFwcGVyIiwKPiA+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJj
c2lkMCIsCj4gPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY3NpZDEi
LAo+ID4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImNzaWQyIiwKPiA+
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJjc2lkX2xpdGUwIiwKPiA+
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJjc2lkX2xpdGUxIiwKPiA+
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ0cGcwIiwKPiA+Pj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ0cGcxIiwKPiA+Pj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ0cGcyIiwKPiA+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICJ2ZmUwIiwKPiA+Pj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICJ2ZmUxIiwKPiA+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICJ2ZmUyIiwKPiA+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICJ2ZmVfbGl0ZTAiLAo+ID4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgInZmZV9saXRlMSI7Cj4gPj4+Cj4gPj4+IElzIHRoZXJlIGEgY2Ftc3MgInRvcCIgcmVnaXN0
ZXIgdG8gZGVzY3JpYmUgaGVyZT8gZS5nLiB0byByZXRyaWV2ZSB0aGUKPiA+Pj4gQ0FNU1MgaGFy
ZHdhcmUgdmVyc2lvbi4KPiA+Pgo+ID4+IEknbSBub3QgYXdhcmUgb2YgYW55dGhpbmcgbGlrZSB0
aGF0LiBXaGF0IGlzICJDQU1TUyBoYXJkd2FyZSB2ZXJzaW9uIj8KPiA+Pgo+ID4+IENBTVNTIGVt
YnJhY2VzIHZhcmlvdXMgYmxvY2tzLCB0aGVyZSBhcmUgQ1NJRCBhbmQgVkZFLCBmdWxsIGFuZCBs
aXRlCj4gPj4gSVBzLCBhbmQgYWxsIHRoZXNlIGNvbXBvbmVudHMgZG8gZXhwb3J0IHRoZWlyIHZl
cnNpb25zIGluZGl2aWR1YWxseS4KPiA+Cj4gPiBJIG1lYW4sIENBTVNTIHVzdWFsbHkgaGFzIGEg
dG9wLWxldmVsIHJlZ2lzdGVyIGJsb2NrIChvZnRlbiB0b3Agb3IKPiA+IGNwYXNfdG9wKSB0aGF0
IGNvbnRhaW5zIHRoZSBUaXRhbi9TcGVjdHJhIHZlcnNpb24gaW5mb3JtYXRpb24sIGFsb25nCj4g
PiB3aXRoIHZhcmlvdXMgZ2xvYmFsIGNvbmZpZ3VyYXRpb24gYW5kIG11eCByZWdpc3RlcnMuCj4K
PiBPbiBTTTg0NTAgdGhlcmUgaXMgImNwYXNfdG9wIiByZWdpc3RlciA8MHhhYzEzMDAwIDB4MTAw
MD4gKG5vdCBpbiB0aGUKPiBzZXJpZXMpLCBJIGJlbGlldmUgeW91IHJlZmVyZW5jZSB0byBpdC4K
Pgo+IElzIENQQVMgYSBuYXR1cmFsIHBhcnQgb2YgQ0FNU1M/IENhbiBpdCBiZSBtb2RlbGxlZCBk
aWZmZXJlbnRseSwgZS5nLgo+IGFzIGEgc2VwYXJhdGUgZGV2aWNlL2RyaXZlciwgbGlrZSBpdCB3
YXMgZG9uZSB3aXRoIEpQRUcgb3IgQ1NJUEhZPwo+Cj4gSSBzZWUgdGhhdCB0aGVyZSBhcmUgb25s
eSBTTTYxNTAgYW5kIFNNNjM1MCBwbGF0Zm9ybXMgbWVudGlvbiB0aGlzCj4gcmVnaXN0ZXIsIHRv
IGNhcHR1cmUgYW5kIHByb2Nlc3MgZnJhbWVzIG9uIFNNODQ1MCB0aGVyZSBpcyBubyBuZWVkCj4g
dG8gcHJvZ3JhbSBDUEFTLgo+Cj4gTm90ZSwgdGhhdCBldmVuIFNNNjE1MCBhbmQgU002MzUwIHBs
YXRmb3JtcyBkbyBub3QgdXNlIHRoaXMgcmVnaXN0ZXIsCj4gaXQgbWFrZXMgaXQgcmVkdW5kYW50
Lgo+Cj4gPiBJbiBwYXJ0aWN1bGFyLCBleHBvc2luZyB0aGlzIGJsb2NrIGNvdWxkIGJlIHVzZWZ1
bCBmb3IgcmVwb3J0aW5nIHRoZQo+ID4gU3BlY3RyYSB2ZXJzaW9uIHRvIHVzZXJzcGFjZSwgZm9y
IGV4YW1wbGUgdGhyb3VnaCBsaWJjYW1lcmEuCj4KPiBJdCBjb3VsZCBiZSBzbywgYnV0IGFkZGlu
ZyBkZWFkIGNvZGUgaXMgYW4gYW50aS1wYXR0ZXJuIGluIHNvZnR3YXJlIGRlc2lnbi4KPgo+ID4g
TW9yZW92ZXIsIGlmIHRoZSBnb2FsIGlzIHRvIGRlc2NyaWJlIHRoZSBDQU1TUyBoYXJkd2FyZSBl
eGhhdXN0aXZlbHkKPiA+IGluIERULCB0aGlzIGJsb2NrIHNob3VsZCBwcm9iYWJseSBiZSByZXBy
ZXNlbnRlZCBhcyB3ZWxsLiBXaGV0aGVyIGl0Cj4KPiBIZXJlIEkgb3Bwb3NlIHN1Y2ggYSBnb2Fs
IGFzIGltcHJhY3RpY2FsLCB0aGUgc2V0IGdvYWwgaXMgdG8gZ2V0IHdvcmtpbmcKPiBjYW1lcmEg
b24gdGhlIHBsYXRmb3JtIHdpdGggdGhlIG1pbmltdW0gb2YgaXJyZXZlcnNpYmxlIGNoYW5nZXMu
IEl0IHdhcwo+IHByb3ZlbiBtdWx0aXBsZSB0aW1lcyBpbiB0aGUgcGFzdCwgdGhhdCAiYW4gZXho
YXVzdGl2ZSBkZXNjcmlwdGlvbiIKPiBlcXVhbHMgdG8gInRoZSB0b3RhbGx5IGJyb2tlbiBkZXNj
cmlwdGlvbiIsIGFuZCBicmluZ3Mgbm90aGluZyB2YWx1YWJsZQo+IGJ1dCBpcnJlY292ZXJhYmxl
IGV0aGVybmFsIHByb2JsZW1zIHRvIG92ZXJjb21lLgo+Cj4gPiBiZWxvbmdzIGluIHRoaXMgc3Bl
Y2lmaWMgYmluZGluZyBpcyBvcGVuIGZvciBkaXNjdXNzaW9uLCBidXQgbXkKPiA+IGluY2xpbmF0
aW9uIGlzIHRoYXQgaXQgZG9lcy4KPgo+IFRoaXMgcmVnaXN0ZXIgaXMgbm90IG5lZWRlZCB0byBn
ZXQgQ0FNU1MgdXAgdG8gdGhlIGZ1bmN0aW9uYWxseQo+IHdvcmtpbmcgc3RhZ2UsIHdoaWNoIGlz
IHJlcHJlc2VudGVkIGJ5IHRoZSBzZXJpZXMuCgpDQU1TUyBhbHJlYWR5IHN1cHBvcnRzIHJlYWRp
bmcgdGhlIGhhcmR3YXJlIHZlcnNpb24gZnJvbSBzdWNoCnRvcC1sZXZlbCByZWdpc3RlciBibG9j
a3MgYW5kIGV4cG9zaW5nIGl0IHRocm91Z2ggdGhlIG1lZGlhIGZyYW1ld29yay4KV2hpbGUgdGhp
cyBpcyBub3Qgc3RyaWN0bHkgcmVxdWlyZWQsIGl0IHdpbGwgbGlrZWx5IGJlY29tZSB1c2VmdWwg
dG8KbGliY2FtZXJhIGluIHRoZSBmdXR1cmUuCgo+IEkgYmVsaWV2ZSBzb21lb25lIG1heSBjcmVh
dGUgYSBuZXcgZmFuY3kgQ1BBUyBkZXZpY2UgZHJpdmVyIG9yIHNvLCBhbmQKPiB0aGUgbmV3IGRl
dmljZSBkcml2ZXIgd2lsbCB1dGlsaXplIHRoZSAiY3Bhc190b3AiIHJlZ2lzdGVyIGFuZCBvdGhl
cgo+IENQQVMgcmVzb3VyY2VzIGluIGEgYmV0dGVyIHdheSwgdGhlIHJlZ2lzdGVyIHNoYWxsIG5v
dCBiZSBuYWlsZWQgdG8KPiB0aGUgQ0FNU1MgcHJlbGltaW5hcmx5LgoKV2VsbCwgeWVzLCB3ZSBj
b3VsZCBjZXJ0YWlubHkgbW9kZWwgaXQgYXMgYSBzeXNjb24gbm9kZSwgZXNwZWNpYWxseQpub3cg
dGhhdCBDQU1TUyBpcyBubyBsb25nZXIgdGhlIG1vbm9saXRoaWMgYmxvY2sgaXQgdXNlZCB0byBi
ZS4KClJlZ2FyZHMsCkxvaWMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
