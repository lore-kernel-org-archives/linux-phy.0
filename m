Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FD14C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 06:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPxNJezi+dv/tAHbHJw9j5GeDFPgWKJ2xegdY1ScbQw=; b=AqFChp1rwn6ygx
	8xlTCG1SUf144Rk9Tvofze4cYsVDSKFpRDzhRgK8hE6sy4ct7sbUyIr6nEFLtnfajyn9IH/OOAhWv
	UDvvqIvQ7PpEC0yuxWvaNCSkE35AuK667FLi73ZAw7IFc7JfIc6AVP02dss7HUhcXBmjvnq9exAr8
	SnxggObJ3N0rJivMV+0iUobC08yLHsxwbHIXTDqD7wMzDXpUnMRg21tS0s5LLdLhqyTropsgvrNLQ
	1Ap9vqUbAr3fxXARjkHPiaip69oUPpERF7ZDQcjoHW9CO1wwoQnzNG7oipF/ya7tizplZs85I4iuV
	ecz6lprq6L4V+Yt2wHSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiQ2-00000001CW1-0TGN;
	Thu, 09 Jul 2026 06:39:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whiPz-00000001CVd-36oi
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 06:39:32 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 669603Fv930325
	for <linux-phy@lists.infradead.org>; Thu, 9 Jul 2026 06:39:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Y5D1mUbwvJ4UlYktwnKee3CyKSTLraYPvFKzyS9cMs=; b=guFIbZ9o6HKLykFn
	C3BfPQCE3uQCJihYV+6Ym6Xmw6QGwCvbgpfVtW1Dof9pbvY5ytM0241vOCFjxGXF
	K/CpOZyk84+EYR65DzhRfv7KVedoOxcZhm83jcfkycewZtD3Vlvf2YND/2MgsJV1
	h+Exq6N1NtS6U/izPibt1g5rW1RAKGxOty15PRvf/tDe2Hgy/BLlx3GWjSNHCL1s
	YbfhmWp4kyaYrRgqHRzIk584wmxSBHsV9U9l6BEwajIyF031EdJhz/7eFombztYC
	1L0Ync/2XtxO8RWSeUPmKhHTxDW3Rh8/Zz0Qo7OKFd/aCcFMJTzfm2Y3p+EzKY2H
	HSh9CQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fa418gjem-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 09 Jul 2026 06:39:30 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2cc86a9ef97so31707125ad.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Jul 2026 23:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783579170; x=1784183970; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2Y5D1mUbwvJ4UlYktwnKee3CyKSTLraYPvFKzyS9cMs=;
        b=I713LZxacTI6rjkpXTbcmX3InJHv4+cWAGUu+kxyUgg0ZLgdEn1HQQLAyfEcGucmpF
         Jzjz2ZhOZdVlMpyRjjMly+6F3C26AoRft3cMogGyymlA+0d1+FkYu+XFNT6+/B+PMVkp
         +s2iXe/E64qRaV6CMLZtZ+8c0/uDBwNUqUU7WqR1o6ezZTanRIYMwTK+t/yG0cNsLhMg
         ZmUwD+GIYSS35KQD2fa+8S/nLZX7J/Tg6gct+3shcEQCBIVpOrD0QKAgSvrJf6vGq5XF
         4TArvR3vxOdmlR+rkzkd+iuHp+J8JSUhA7ZmuBa4R/XSLatRrSXoMQrXPBkTfGDR5s8V
         MFbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783579170; x=1784183970;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2Y5D1mUbwvJ4UlYktwnKee3CyKSTLraYPvFKzyS9cMs=;
        b=DwExJ9Vxmef+1p7tTlfkrZ7VKea06n7anFBu0AF//09hKIv+2yjGNo7BG8KQDOAhHF
         BIABdWoc09tifqpg2lZPa3aSX7vt5wQqFgfU6ioPoFwYnv7XQa1RguWI2Keg7VDv1qbR
         Q/Lg/RWp61jKZoet8eb5/pVos6vLFpQeQu/PwbeT3piDWTiFlpy2f0IVJ3enmp5h/wvJ
         wdFr8xoZVJP5imI+EWoyLjYgeHAlJcxjIMBn5YHRt0gv1MSFQxg98r6JyS0a49iGCHCl
         et5bv/luXSfK2OM7e8rucE/3TJr6g41kA+I4x2KOnDnqKyl8eBDw+SQ6i6AFuRnAWr/r
         j5GA==
X-Forwarded-Encrypted: i=1; AHgh+RqWgDJulksOpo7qxw4RGAT6ucvuT2OPcACs0i5tc9VvBTLzXMWn3KWbI+/SuuubwLBe2jTuluLWEww=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0g558NfiMoy9GUUSr/pIXTN0QKXYHygXeFHDl45ncQJucGTzJ
	1v2RmfxqaYyFI3dAAq2KlYCLwomM78WDuK3qnxZuuEQahjUT2CfWvDwdA9gGGWmmeLRtfUMBYJN
	N633W3KDWmZO9o7ovd3iyxXwNgVuhQPSCygckqiM69bzdccCUVVSd3hlNK/a7fmabhqRf
X-Gm-Gg: AfdE7cmWk7eOgw8/70wi9HyTx35Vyg94nVVnET2PmOTPYoGYjFLm/9SCeJYzzklhmVe
	OLIDn/AC2qaAZ2OK7T8eLpX0FA1G/LfK0z2WsvFQQBc8pZO3FZOxLSSF1Fp6T5DEop+2g465JYi
	bZdpwHsui9bFo7MJ04KOedkjU5EXjKbep54lcev2tcu2yOh81JkGgkL7D5i3PaWxVvZtu66UPc0
	oDBOS7rroxb8uT1tw6JozpHN4lUaT5Awh2pve5x+i4GN8JQH7Gcv9otKWIY/RZ91g+zKeyshZAS
	b5eXG3foT7p6+3JTMo5Vsp4i9bgPLvU2oJQwhCcleGO1Xsta3RFHrRcC3Efi0pMZCrS+V+gwQpE
	1MW99tRYr3bf59IzolYNFycYe4mR1n2dRJQW6Pw/ZzWM=
X-Received: by 2002:a17:902:fdab:b0:2ca:d666:df72 with SMTP id d9443c01a7336-2ccea39be30mr62231225ad.21.1783579170026;
        Wed, 08 Jul 2026 23:39:30 -0700 (PDT)
X-Received: by 2002:a17:902:fdab:b0:2ca:d666:df72 with SMTP id d9443c01a7336-2ccea39be30mr62230895ad.21.1783579169587;
        Wed, 08 Jul 2026 23:39:29 -0700 (PDT)
Received: from [10.218.35.45] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d5bdddsm38167755ad.77.2026.07.08.23.39.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2026 23:39:29 -0700 (PDT)
Message-ID: <851ffc42-657d-4b26-a47a-7cc713bbe64c@oss.qualcomm.com>
Date: Thu, 9 Jul 2026 12:09:23 +0530
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
X-Authority-Analysis: v=2.4 cv=UI3t2ify c=1 sm=1 tr=0 ts=6a4f4222 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=Zlw8WEmqWycuYniGgb4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDA2MSBTYWx0ZWRfXxsfSZdeHUdaA
 IfZ8ULoQThnA4Cny+8RWTpxdPKHLejjJMSohlz1+FGlSXM9AQ9OOBUu6ltoSuX8KiLXaK06qVye
 dC/ocDdiJvmX57kqH37vTHeurqDtwSKEy8G57ekKzcRyUtv1LJdlOdDuXvfC1iK4JWB6+lwNtnP
 x2KTfRqB5elzvBD6XQDAM4l6vIchHXfELLBobDREC7ZJdCp1V+3zrkx6S2a9uI4Rnc166tBodRu
 /TrlhEp/gWIEkmukH46zO97G/C2RO2JMJDXA56zUt8Kzw1mYehlt8a89hkyxioXnprEZEbtaOQ4
 BUh26P9SZqJUeKHPH2RbmMf849ArbepCdaxkRvb4fQuxBV+WNxzoe0I8FS9nYnMQmJv6k9sXeJA
 9bMqbos4vx5fIwWsCsgJcwAy6nMW0GbcOBTPXUoRak6rCIoEyYvGSfXl67EW0zviFkEgYZqlWS9
 0eeN/DX5wcn6aLtaHGA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDA2MSBTYWx0ZWRfX5WoC9gePUObs
 mqIAurztF+FCbggsr0J8xR89R68A1ndcwvGi0LFqa8Naa3Z+4tw/UTNaVcFrl3PwTHMnHWg1ajb
 e2/dDlo57ba+C9Y3S0PzLiKu8zlzzWw=
X-Proofpoint-GUID: L-xFbFUlDBvwKc-ogWKqhgJymjD-ceil
X-Proofpoint-ORIG-GUID: L-xFbFUlDBvwKc-ogWKqhgJymjD-ceil
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_01,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 malwarescore=0 bulkscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607090061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_233931_788010_5FF1D193 
X-CRM114-Status: GOOD (  28.23  )
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
IERUIHJlcXVlc3RlZApJIGhhZCB1cGRhdGVkIHRoZSBsb2dpYyBpbiB2MyBub3cswqAKIlRoZSBt
YXgtbGluay1zcGVlZCBhbmQgbnVtLWxhbmVzIHByb3BlcnRpZXMgaW4gRGV2aWNlIFRyZWUgY2Fw
IHRoZSBsaW5rJ3MKwqAgwqAgbWF4aW11bSBjYXBhYmlsaXR5LiBSZXRyYWluIHRoZSBsaW5rIGlm
IHRoZSBjb250cm9sbGVyJ3MgbWF4IGxpbmsgc3BlZWQgb3IKwqAgwqAgd2lkdGggZXhjZWVkcyB0
aGUgRGV2aWNlIFRyZWUgY2FwLCB1bmxlc3MgdGhlIGN1cnJlbnRseSBuZWdvdGlhdGVkIHNwZWVk
CsKgIMKgIG9yIHdpZHRoIGlzIGFscmVhZHkgd2l0aGluIHRoYXQgY2FwLCBpbiB3aGljaCBjYXNl
IHRoZSBleGlzdGluZyBsaW5rIGNhbgrCoCDCoCBzdGlsbCBiZSByZXRhaW5lZCIKCi0gS3Jpc2hu
YSBDaGFpdGFueWEuCj4+ICsJCQlyZXR1cm4gZmFsc2U7Cj4+ICsKPj4gKwkJaWYgKHBjaS0+bnVt
X2xhbmVzID4gMCAmJiB3aWR0aCA+IHBjaS0+bnVtX2xhbmVzKQo+PiArCQkJcmV0dXJuIGZhbHNl
Owo+IFNpbWlsYXJseSwgdGhpcyBzaG91bGQgYmUgPT0KPgo+IEtvbnJhZAoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
