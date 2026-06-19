Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62416CD98E6
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 05:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9Zr9MD44x1nx94WDPCLYLGn7S8Ol9uvBxYfiBdDx5k=; b=IfQ7FChZITQuzC
	17dehoVLibDZ+BuclSWXFyISdbSWgTdV/vGoed/c/x0nXOeWgUu1ZcT63HSIiBM8R8gc3RbxsDebN
	m6DmKf5dqp+Gjo13OAX0Lj+0sqeVb/x4eH+6qEjowyDro5QhG4Kluxhls93ofyGBYBTJfNDiwD4rv
	P+fv+i6hXQYpIWs10Djku51yveXi8zecZzOAM5gjTjluycdJnk4qiRepRj4+EZsoBA6DToDxtj25F
	4HY4irOEoJgxVDjC0clyDotTzG/wuMErILjRidsqRLcNn8DGVLWmfJAZETM1uiZRQwCuI91CRFvYT
	3GyqhKv8LQWcf+IGEYBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waRL9-00000001ze6-3ceL;
	Fri, 19 Jun 2026 05:00:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waRL6-00000001zd0-0iGz
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 05:00:26 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65J2u4WQ3701739
	for <linux-phy@lists.infradead.org>; Fri, 19 Jun 2026 05:00:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pbWfbP8zOvWzwTkX5u+oI/cT928jr6o9nUUfDkalaCU=; b=XdZVve4x0Txwr9ho
	eo6eABVK0Rvu13cNOZsk5Urgv6GoKsROYpTby+bJsaRhQduM/WJw0+1h1z2FlzQA
	SFy6aDEIxSSDsH7bZOOUCdsAuCS/H4C+U0MvNcAlbZ32eUZYGGkaO5fp/vTHTuJf
	gGgKUSMI1NLcmuyEM4nZHNUU+zui3me0ZIqCCbolZYkTAp0AW/uRtWsOi7yWZj1g
	NwYXXpvanQbTaC58xxnB4d9nP9VRrLoR6QrCWCUvWq09UGAGnQ0r75G5qmZealgn
	CbFswDbFQHzpH/m11jNhFfG0euxCvBmsd0UMNJQoCsL+mLLU1TwQsffkHkqSWKiK
	h8LNFg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4evmtjaaad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Jun 2026 05:00:20 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c88e0f04e51so1133718a12.0
        for <linux-phy@lists.infradead.org>; Thu, 18 Jun 2026 22:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781845219; x=1782450019; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pbWfbP8zOvWzwTkX5u+oI/cT928jr6o9nUUfDkalaCU=;
        b=JxqNYPC+NtMY4ZHzVKe0nhviiN5P00aj6i/HtWISYGiHXKm6UZAovot4zoDURW/Xpt
         lPBQCi+amTW8uni4V/vLdu7Is7MiPVplf/2Kg1w0D4WYHYdHRJ81CCe1PNkMhXHJGGE9
         Z9hKE7Nt2uV2VNLyPYCBF8fOhEBRExsNqd3FqjRQn6b12hvnkOwQwXCz5ZV9v7cm5/nm
         /vYHPF8jSXe94hoJ/5UqwXtyEQgIhhgQnWS3D8IZTgb6kinW+ibWs1xYPtReE70ZrLES
         XDY6Fx9QyKqxVX+WzKpGhmVWDafkkY1/YhTd0SuUmA10MfGzMX0Ljyd/HEGB90Yu9XJn
         8DgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781845219; x=1782450019;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pbWfbP8zOvWzwTkX5u+oI/cT928jr6o9nUUfDkalaCU=;
        b=f1OSgSynrtUDnO+YAFujIDN+f9Zuoibkg/Bace3oYxDuqwAqZwNC3VVmYvwQCfH1DG
         byrE2fP2/iqL4CVufSdj6WvnbIHxaKQwBehn5gDJMxjjS6fxEsgtHxGhX4MjQjIhOy2F
         Ucu/lfrT3CD8It2p5POSztwLALtsWQu2HLXRVfvE4yoSB7rO4EMPIXTx34l+obZJvGNT
         PmQrGienEcSMjpEMigS60mhSGiQwOdDF3Ik+7/CHVzLRTOPQyryI4PvP8Di4XizH8Tp2
         KidMaE5CxILAx5n3DPA6JT2GTB/x8PjnGtvi7tF5UHwonYZHV2YVxVIbxITamBJcQZSc
         oJng==
X-Forwarded-Encrypted: i=1; AFNElJ8OLnnvTfa4N4ASrbmIYI04jN7Ng3NVKsXJZJAoXYOBLksw7SzRrqoFnw3z4i0B2IJzrE3RpqJ9J9U=@lists.infradead.org
X-Gm-Message-State: AOJu0YxxiDhwKmc6GF+EmrHZXdVMd4JSKEByWc8MAvDubRyc05RpJWFB
	ybjiyHOoOsBcNONp88f6fdxA3tpyuSpNnj2nUWHrDym1EHlg6eIi0c0ubLwxsRMcgDtvBd6/Oer
	0Dbri/Hikr9PqOrkKJf7jKiOEkJ0HlpHFYRwOQPUo0JwAk+hwwU3WjLbS1SYp+YK3WaJR
X-Gm-Gg: AfdE7clciR+vQfxVM/Z18TywiHJDuMnIpdusd6uMRtC0MrIrtOJyUMtMBLVeIXG4SJR
	Qfboq+/aoUsaSBWSZ87BS3mrUerNojdCBXQSJemwSpmTalRMiLnc3WG/HrURNopcXC0LNyxqbgd
	+Mxz7QDenG88IHK96WacwWKO2OB4wY/1GAqWKm2WFQJgT1vLUg7lM5g/45U9wpQoDoHp0XfCQvh
	ZTt16AxaN7UKkoiHyCWcvh3ojkXoa6kERiRBVv2EL+qbRNBc1hkIv8KxoW8PHB/hbhxK4rJIp/T
	hZBOhx/xMG5qJY6eIXfqIgxe1qy0E9ymRn46UWMT6OCftc5AJttOdYOL805phTlroWmiMzQSIhT
	47PesLupd0jdDQuLF7XNqpb0D5KM3kVm8EogGheFqo9J7
X-Received: by 2002:a05:6a00:b42:b0:845:313c:d6c2 with SMTP id d2e1a72fcca58-8455089ecc1mr2002772b3a.31.1781845218746;
        Thu, 18 Jun 2026 22:00:18 -0700 (PDT)
X-Received: by 2002:a05:6a00:b42:b0:845:313c:d6c2 with SMTP id d2e1a72fcca58-8455089ecc1mr2002673b3a.31.1781845218036;
        Thu, 18 Jun 2026 22:00:18 -0700 (PDT)
Received: from [10.92.198.124] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-845537ff8fasm872324b3a.31.2026.06.18.22.00.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jun 2026 22:00:17 -0700 (PDT)
Message-ID: <6fc15f93-9ad1-4009-954b-37a96c021536@oss.qualcomm.com>
Date: Fri, 19 Jun 2026 10:30:11 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] PCI: qcom: Add link retention support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
References: <20260521-link_retain-v2-0-08ed448b081c@oss.qualcomm.com>
 <20260521-link_retain-v2-3-08ed448b081c@oss.qualcomm.com>
 <8bb365dc-25b4-4fe3-8ad9-1f110bad2417@oss.qualcomm.com>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <8bb365dc-25b4-4fe3-8ad9-1f110bad2417@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE5MDA0MiBTYWx0ZWRfX40DpXjfFCOaX
 FFq88cAmJWXOWMncifmnkHCdBZDLDhCnHTbeBobXRe0mMvBSoI/t0Scf+ZB7AdMLAvlUDkeeMDh
 aJOrBSls8kScIFCgwi+1n0O7nRwbQv0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE5MDA0MiBTYWx0ZWRfX7siUea8E2FwN
 Tcqt4xLnl62QqnOLL1FKKP8S30FQbGWWZZfQ/1jOjMFzR7d1YRHNuHcieDEU+GTNSzPUzvQG11l
 FrnVzQdoEBNSuB1P/G9it2Imt6rhIUq9JU4My1gZB3u8Q2oN8dXh0B1Ef6y1p2GVIXfi3KuEdYc
 OprTMcm0DnS+pIZynlFzhoyxVPAYkPaSdaCUjttxp0I9KRrICME/I1E0DSzRrY6lCC9lLDmB/MC
 UhxxanzvkKp9L31CBDRS/0UNa9u7We8m4l/A1CYjx7mZCTt7JrE8IOxgx05i8UbhQfWS3IdKUcl
 dWoKeuYteOAgCdEvZtgi/zyyPlLU0cVT8coQUdT8iFyBunNsGkgckjbMzatSMRgStGWFFfejMz6
 iPaW71qi2a85OW75DVlOK2/oQnulRvAtZLSEIhLjIAdOdsACZpKoLzr/kU+jN64jITioVkEcHa7
 iE2rQGLo9ipmMVTqaAw==
X-Proofpoint-GUID: zuWpVAGasvpxjK1R6WPq5d1VnSh2S_LZ
X-Proofpoint-ORIG-GUID: zuWpVAGasvpxjK1R6WPq5d1VnSh2S_LZ
X-Authority-Analysis: v=2.4 cv=OM8XGyaB c=1 sm=1 tr=0 ts=6a34cce4 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Zlw8WEmqWycuYniGgb4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-19_01,2026-06-18_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606190042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_220024_332912_182857CD 
X-CRM114-Status: GOOD (  27.74  )
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

CgpPbiA2LzE2LzIwMjYgNTozOCBQTSwgS29ucmFkIER5YmNpbyB3cm90ZToKPiBPbiA1LzIxLzI2
IDI6NTYgUE0sIEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgd3JvdGU6Cj4+IFNvbWUgcGxhdGZv
cm1zIGtlZXAgdGhlIFBDSWUgbGluayBhY3RpdmUgYWNyb3NzIGJvb3Rsb2FkZXIgYW5kIGtlcm5l
bAo+PiBoYW5kb2ZmLiBSZWluaXRpYWxpemluZyB0aGUgY29udHJvbGxlciBhbmQgdG9nZ2xpbmcg
UEVSU1QjIGluIHN1Y2ggY2FzZXMgaXMKPj4gdW5uZWNlc3Nhcnkgd2hlbiB0aGUgZHJpdmVyIGRv
ZXMgbm90IG5lZWQgdG8gcmV0cmFpbiB0aGUgbGluay4KPj4KPj4gSW50cm9kdWNlIGxpbmtfcmV0
YWluIGluIGJvdGggcWNvbV9wY2llX2NmZyBhbmQgcWNvbV9wY2llIHRvIGluZGljYXRlIHdoZW4K
Pj4gbGluayByZXRlbnRpb24gaXMgc3VwcG9ydGVkLiBEdXJpbmcgaW5pdGlhbGl6YXRpb24sIGNo
ZWNrIHRoZSBMVFNTTSBzdGF0ZTsKPj4gaWYgdGhlIGxpbmsgaXMgYWxyZWFkeSBpbiBMMCBvciBM
MSBpZGxlIGFuZCBMVFNTTSBpcyBlbmFibGVkLCBzZXQKPj4gbGlua19yZXRhaW4gYW5kIHNraXAg
Y29udHJvbGxlciByZXNldCwgUEVSU1QjIHRvZ2dsaW5nLCBhbmQgb3RoZXIgcG9zdC0KPj4gaW5p
dCBzdGVwcy4KPj4KPj4gSWYgdGhlIGN1cnJlbnQgbGluayBzcGVlZCBvciBsYW5lIHdpZHRoIGRv
ZXMgbm90IHNhdGlzZnkgdGhlIGNvbnN0cmFpbnRzCj4+IHNwZWNpZmllZCBieSBtYXgtbGluay1z
cGVlZCBvciBudW0tbGFuZXMgaW4gdGhlIGRldmljZSB0cmVlLCBmYWxsIGJhY2sgdG8KPj4gbm9y
bWFsIGluaXRpYWxpemF0aW9uIGFuZCByZXRyYWluIHRoZSBsaW5rIGluc3RlYWQgb2YgcmV0YWlu
aW5nIGl0Lgo+Pgo+PiBDb25maWd1cmUgdGhlIERCSSBhbmQgQVRVIGJhc2UgYWRkcmVzc2VzIGlu
IHRoZSByZXRlbnRpb24gcGF0aCwgc2luY2UgdGhlCj4+IGJvb3Rsb2FkZXIgbWF5IHVzZSBkaWZm
ZXJlbnQgYmFzZSBhZGRyZXNzZXMgdGhhbiB0aG9zZSBwcm92aWRlZCBieSB0aGUKPj4gZGV2aWNl
IHRyZWUuCj4+Cj4+IEFsc28gZml4IHRoZSAtRVBST0JFX0RFRkVSIGVycm9yIGhhbmRsaW5nIHBh
dGggdG8gcmV0dXJuIDAgaW5zdGVhZCBvZgo+PiBwcm9wYWdhdGluZyB0aGUgZXJyb3IsIGF2b2lk
aW5nIHVubmVjZXNzYXJ5IGNsZWFudXAgd2hlbiBwcm9iZSBkZWZlcnJhbCBpcwo+PiByZXF1ZXN0
ZWQuCj4+Cj4+IFRlc3RlZC1ieTogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+
Cj4+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1
bmRydUBvc3MucXVhbGNvbW0uY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtZGVzaWdud2FyZS5oIHwgIDEgKwo+PiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1xY29tLmMgICAgICAgfCA2MiArKysrKysrKysrKysrKysrKysrKysrKysrLS0tCj4+
ICAyIGZpbGVzIGNoYW5nZWQsIDU4IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUu
aCBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS5oCj4+IGluZGV4
IDNlNjllZjYwMTY1Yi4uYmU2YzRhYmYzMWU4IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaAo+PiArKysgYi9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUuaAo+PiBAQCAtNDUwLDYgKzQ1MCw3IEBAIHN0cnVj
dCBkd19wY2llX3JwIHsKPj4gIAlib29sCQkJZWNhbV9lbmFibGVkOwo+PiAgCWJvb2wJCQluYXRp
dmVfZWNhbTsKPj4gIAlib29sICAgICAgICAgICAgICAgICAgICBza2lwX2wyM19yZWFkeTsKPj4g
Kwlib29sCQkJbGlua19yZXRhaW47Cj4+ICB9Owo+PiAgCj4+ICBzdHJ1Y3QgZHdfcGNpZV9lcF9v
cHMgewo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29t
LmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+PiBpbmRleCBiZmU4
NzNjYmY0NGYuLmIwNjFlYWEyMjdiMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1xY29tLmMKPj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1xY29tLmMKPj4gQEAgLTI1MywxMiArMjUzLDE0IEBAIHN0cnVjdCBxY29tX3BjaWVfb3Bz
IHsKPj4gICAgKiBAb3ZlcnJpZGVfbm9fc25vb3A6IE92ZXJyaWRlIE5PX1NOT09QIGF0dHJpYnV0
ZSBpbiBUTFAgdG8gZW5hYmxlIGNhY2hlCj4+ICAgICogc25vb3BpbmcKPj4gICAgKiBAZmlybXdh
cmVfbWFuYWdlZDogU2V0IGlmIHRoZSBSb290IENvbXBsZXggaXMgZmlybXdhcmUgbWFuYWdlZAo+
PiArICAqIEBsaW5rX3JldGFpbjogU2V0IGlmIGNvbnRyb2xsZXIgc3VwcG9ydHMgcmV0YWluaW5n
IGxpbmsgZnJvbSBib290bG9hZGVyCj4+ICAgICovCj4+ICBzdHJ1Y3QgcWNvbV9wY2llX2NmZyB7
Cj4+ICAJY29uc3Qgc3RydWN0IHFjb21fcGNpZV9vcHMgKm9wczsKPj4gIAlib29sIG92ZXJyaWRl
X25vX3Nub29wOwo+PiAgCWJvb2wgZmlybXdhcmVfbWFuYWdlZDsKPj4gIAlib29sIG5vX2wwczsK
Pj4gKwlib29sIGxpbmtfcmV0YWluOwo+PiAgfTsKPj4gIAo+PiAgc3RydWN0IHFjb21fcGNpZV9w
ZXJzdCB7Cj4+IEBAIC05NjAsNiArOTYyLDQyIEBAIHN0YXRpYyBpbnQgcWNvbV9wY2llX2dldF9y
ZXNvdXJjZXNfMl83XzAoc3RydWN0IHFjb21fcGNpZSAqcGNpZSkKPj4gIAlyZXR1cm4gMDsKPj4g
IH0KPj4gIAo+PiArLyoKPj4gKyAqIERldGVybWluZSB3aGV0aGVyIHRoZSBsaW5rIGVzdGFibGlz
aGVkIGJ5IHRoZSBib290bG9hZGVyIGNhbiBiZSByZXVzZWQuCj4+ICsgKgo+PiArICogUmV1c2Ug
dGhlIGV4aXN0aW5nIGxpbmsgb25seSBpZiBpdHMgY3VycmVudCBzcGVlZCBhbmQgbGFuZSBjb3Vu
dCBtYXRjaAo+PiArICogdGhlIG1heC1saW5rLXNwZWVkIGFuZCBudW0tbGFuZXMgc3BlY2lmaWVk
IGluIERldmljZSBUcmVlOyBvdGhlcndpc2UsCj4+ICsgKiByZXRyYWluIHRoZSBsaW5rLgo+PiAr
ICovCj4+ICtzdGF0aWMgYm9vbCBxY29tX3BjaWVfY2hlY2tfbGlua19yZXRhaW4oc3RydWN0IHFj
b21fcGNpZSAqcGNpZSkKPj4gK3sKPj4gKwl1MzIgY2FwLCBzcGVlZCwgdmFsLCBsdHNzbSwgd2lk
dGg7Cj4+ICsJc3RydWN0IGR3X3BjaWUgKnBjaSA9IHBjaWUtPnBjaTsKPj4gKwl1OCBvZmZzZXQ7
Cj4+ICsKPj4gKwl2YWwgPSByZWFkbChwY2llLT5wYXJmICsgUEFSRl9MVFNTTSk7Cj4+ICsJbHRz
c20gPSB2YWwgJiAweDFmOwo+PiArCWlmICgodmFsICYgTFRTU01fRU4pICYmCj4+ICsJICAgIChs
dHNzbSA9PSBEV19QQ0lFX0xUU1NNX0wwIHx8IGx0c3NtID09IERXX1BDSUVfTFRTU01fTDFfSURM
RSkpIHsKPj4gKwkJcWNvbV9wY2llX2NvbmZpZ3VyZV9kYmlfYXR1X2Jhc2UocGNpZSk7Cj4+ICsK
Pj4gKwkJb2Zmc2V0ID0gZHdfcGNpZV9maW5kX2NhcGFiaWxpdHkocGNpLCBQQ0lfQ0FQX0lEX0VY
UCk7Cj4+ICsJCWNhcCA9IGR3X3BjaWVfcmVhZGxfZGJpKHBjaSwgb2Zmc2V0ICsgUENJX0VYUF9M
TktDQVApOwo+PiArCQlzcGVlZCA9IEZJRUxEX0dFVChQQ0lfRVhQX0xOS0NBUF9TTFMsIGNhcCk7
Cj4+ICsJCXdpZHRoID0gZHdfcGNpZV9saW5rX2dldF9tYXhfbGlua193aWR0aChwY2kpOwo+PiAr
Cj4+ICsJCWlmIChwY2ktPm1heF9saW5rX3NwZWVkID4gMCAmJiBzcGVlZCA+IHBjaS0+bWF4X2xp
bmtfc3BlZWQpCj4gSSB0aGluayBJIHJhaXNlZCB0aGlzIGNvbmNlcm4gYWxyZWFkeSwgYnV0IHRo
aXMgZ29lcyBhZ2FpbnN0IHdoYXQKPiBtYXgtbGluay1zcGVlZCBpcyBzdXBwb3NlZCB0byBkbywg
aS5lLiB0aGlzIHdpbGwgbm90IHJldHJhaW4gdGhlIGxpbmsgaWYKPiB0aGUgYm9vdGxvYWRlciBo
YWQgaW5pdGlhbGl6ZWQgdGhlIGxpbmsgdG8gYSBzcGVlZCBmYXN0ZXIgdGhhbiB3aGF0IHRoZQo+
IERUIHJlcXVlc3RlZApzb3JyeSBmb3IgdGhlIG1pc3MsIGl0IHNob3VsZCBiZcKgc3BlZWQgPCBw
Y2ktPm1heF9saW5rX3NwZWVkIHNhbWUgZm9yIHdpZHRoCmNoZWNrIGFsc28gaXQgc2hvdWxkIGJl
IHdpZHRoIDwgcGNpLT5udW1fbGFuZXMgSSB3aWxsIGNvcnJlY3QgaXQgbmV4dCB2ZXJzaW9uLgot
IEtyaXNobmEgQ2hhaXRhbnlhLgo+PiArCQkJcmV0dXJuIGZhbHNlOwo+PiArCj4+ICsJCWlmIChw
Y2ktPm51bV9sYW5lcyA+IDAgJiYgd2lkdGggPiBwY2ktPm51bV9sYW5lcykKPj4gKwkJCXJldHVy
biBmYWxzZTsKPiBTaW1pbGFybHksIHRoaXMgc2hvdWxkIGJlID09Cj4KPiBLb25yYWQKCgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
