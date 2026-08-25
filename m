Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D3FEC5DF94
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 05:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vV0zzUGuZckYy6NXJTIJyZbaoxbmnRhAXBDcORc1oOI=; b=efvNaiZBU+2VHF
	t64Fq96bzdqv7hh7f5nSFhAGhdrAQfDPxrhlP2XoDOyi8zceXRnmjaSFWTQYLL7azd15W6OrzQytB
	mlzYAebIhGRbt1D0YDl15QEaKaw1mC388+MJim85iqWWucCVI5YuI0RwwqS1OZsOEvqgKAzf8KKWr
	oPKn7HZ9xiDxbrY2EbKovICf/WN40w54XBEhXGy2kxLul0LBvrbxd1oN9VnhUHJGI2VNrFgRN57hl
	ZdsIXxJJR9zQPQEy89NgIvXgoISatI7ccfsUtZEswqrBmmp1drN6L9JDV12OIla0+9ebxCRSHNm1j
	cBR9+cpdAOn0qvvaCMWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyjus-00000000COq-3zii;
	Tue, 25 Aug 2026 05:41:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyjuq-00000000COW-42oq
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 05:41:46 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67P2R7tf624992
	for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 05:41:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1PsMhhVa6JfKj+h+RBwYduZNFD68eh+7/4Qf4uXqj2s=; b=O9+oRxTdfl84SJU6
	eLbq/y/wdGPDMR3AlWOC5owzdig7AFR/tcKLbA8Vyw7db1y5Wq1JMj0PGt2JdFWk
	BpPtgSrBsZdqN3t2EfsM3vmbuveQnS4N2bNoXcL5LvNGt+ZvFbGz2kb2+pHHrjvv
	qzwZlIjmSMMAAr/DL5L6FJd+/qtym91I1us2VS5h5NeKJnF+bKuYjzeXOLRmq40E
	DgAteCz3i+ycqrLMqEyqB7RaMh2sCZ9Vr4F1hdDVfW28eMM4zWrDughHil/pzNk9
	JVpJDxMadKE6waLBAu8Z+N/vd0Ejz3/u7r5GxdRQF8nF9j7biAiwVynXYSOCThUt
	VGb+tQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8pkdkbfh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 05:41:42 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cc132709c76so6416238a12.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 22:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787636502; x=1788241302; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1PsMhhVa6JfKj+h+RBwYduZNFD68eh+7/4Qf4uXqj2s=;
        b=bIbdfirwb7xAyq5k8zkjiPwGTRxwsLH4xRpTqr1gS5fhHDOS5ln9O3EdVTVtI26Dbb
         BlynM0QPYEPSzRS7a8NU3Xpey+vpDG1pt6itTXguvwxPKvVi7v3lJssEEAeY8XeM3YUY
         1FmOD27B3QuGLA6McYYH/6SYNDT8Qiylj2IiGZZvhik6ZXXPyKmTFHYAYg/uzTyTc+pa
         9vLkl6MJO4i/6LuQ+aKOhx/tqu5lST744Kr34xq1MC3OzVm6Ikdjy9VC/uCDR6OpmZEu
         b0qF7uThsXj/N9quo9GBuoc9sM9ZQiInaZ8kffNNt/Rilt4sCJABRZgJnDbAZ2Lk82Jp
         RUjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787636502; x=1788241302;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1PsMhhVa6JfKj+h+RBwYduZNFD68eh+7/4Qf4uXqj2s=;
        b=AfJs4YMs5ete4hXrgEr1UflmHtsoUvMaJecvGNF4QdFx2zPPckK4L02VSBSNASNxs8
         Jy+jRxr4ox61ev7SwPfeZfbnfqcqhojVVdCdegpCoPZCT6j2vOAsl2k+RKCQaWVGnrrH
         BqUjpChjmCT7zuaNiqqgJffMvhOPOkZ6Q4degh6fWaUkduSHOAMy6gKEqRtNRv3iu/1r
         AofeICyxwoxMihqIC0UeXplfX/QD8v829dDXyaG6DIVp/wAv5Rhb1ErC0EWzFk9CJbGs
         R2YUevf070ysYzjbc3s9bNkgMYmaPSdMuU1Ua/edjck1HuvCk3x945najZsJrjplwuS+
         3Q7Q==
X-Forwarded-Encrypted: i=1; AHgh+Ro60PXs4rUovQ7z/x+vqiDlYmZ89OgBQvi+3Cro7NDgOlVem81icWhXsspEq4ch2nCbLbY+nxuW2fQ=@lists.infradead.org
X-Gm-Message-State: AFuF++nziiLbzA5FjFDvNTyQacYvNh1s5RGjrbviu5+QGGS19NM5t4r5
	dGufv5zFrgancFAqHaQ6ojaZb5g5UFTtAH017CPu9SYSQ7ChbE8336R4SAeXBEk1HX4VAxpfaG+
	90j9nNkTFYytt2a1fwKg0VMm4CToSTrEo1y3UKHE9Fsr3/vBQSisdHIqsDimV9PFGWThPd0wbn+
	mc
X-Gm-Gg: AR+sD126ujw8Wnyw4cKHHOckoFmxuuABDERUsNkZphC9hKIaQ53EK69VIAZAKgraujQ
	LRdslD8ruK8pGVe/PLSHzBn9aqyeHlPVzDcW8sz8nqBg8Em7xvYBFoTXZTrvuuluBM1ZYz1jDRB
	UpMaKWelv/VIWwYGYRtm5/ySJE4tAP256UnFCOe6Bagdg3O+5Vq+BdeyjI2iIuz5yzwTwvCQnqk
	NeQwVZCNqIiGQSDoK21kPZs10LRt+P4SLEX2N9SqwyxjLy3USJgQsQ5vZg1DsLIW9+BpkE4lS9f
	4upVvDfRvZSBVb0FkuDmANBMe6zif8q/l5g8W669LCec+kvV0PilNnG6tn+WfJmCk+CCQIaBAzP
	vCgVbSDJdWkLBaZO6quzg4oCUnqMJ7PkUMw==
X-Received: by 2002:a17:90b:3142:b0:37f:e177:f58 with SMTP id 98e67ed59e1d1-395c35e27c2mr55627790a91.9.1787636501576;
        Mon, 24 Aug 2026 22:41:41 -0700 (PDT)
X-Received: by 2002:a17:90b:3142:b0:37f:e177:f58 with SMTP id 98e67ed59e1d1-395c35e27c2mr55627733a91.9.1787636501155;
        Mon, 24 Aug 2026 22:41:41 -0700 (PDT)
Received: from [10.217.217.49] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39645b82847sm2454358a91.11.2026.08.24.22.41.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2026 22:41:40 -0700 (PDT)
Message-ID: <cb68a100-e26f-4db3-bbbc-fd581c2adb8f@oss.qualcomm.com>
Date: Tue, 25 Aug 2026 11:11:34 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] dt-bindings: PCI: qcom: Document the Shikra PCIe
 Controller
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio
 <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-2-e1a721eb8943@oss.qualcomm.com>
 <hf6szamduxopeuvkjkxxteqauirsgfq36pih7go2wf25o4zmv4@vhmhe3gyzgo5>
 <7a17da3d-c838-4877-8a62-5551dbdaa9e5@oss.qualcomm.com>
 <xxoyame76suxnhzglpccdxmvrpal3n5bgxhvcjeqyznepe2cyr@bud6ob4ecw7q>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <xxoyame76suxnhzglpccdxmvrpal3n5bgxhvcjeqyznepe2cyr@bud6ob4ecw7q>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI1MDA0NiBTYWx0ZWRfX7haZb69PNBHY
 3TajBAIERGn19/XgVsEV+KtrmG4D9Gu3PRLouCSANs7PcxG3IvAxmcW/mcNgTS6lLLZJO/TD4gP
 MRCUravMptB9V8QDlDx4hWcr/LmRRwI=
X-Proofpoint-ORIG-GUID: 8JQyV9ncvdLh04b2qmUIZKjErLMxitJP
X-Proofpoint-GUID: 8JQyV9ncvdLh04b2qmUIZKjErLMxitJP
X-Authority-Analysis: v=2.4 cv=Kq19H2WN c=1 sm=1 tr=0 ts=6a8d2b16 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=JOUT_JFrYYanlDGIWxUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI1MDA0NiBTYWx0ZWRfX9ZJau6Hhlbpm
 StxmJqxXqNFWl9ID2gDwEHjb9/OxW9IBOe0mNOTbLYtt0VUFKwHUaDGWphY5zStBtuZ8lFkQm+A
 KXWCNrnxey1kwoXi8IJdPlLmVXNCwYuuFEeUNgJnxyf/d0d3q8bSTj8P87m9FYKpwRYs6dW2yh5
 mtK2DRntghaLCVpPc3sJjVz8wS5+ceIqhmgvSBodHKUMevRGrNEUHa0jyoTAjgS4VUzsKFEVUs2
 bYOxzt0wtIqAB0dm+pH12z40xb82lK4HbQKjPV+jjRoKItIx6mHfFf0rIP9nX5SusFal87UcAzj
 ix4MIhpXnyUQS9y+E9Bzyx0Y18aCrz2jaQIJvAmPcWj7ps/QwhQlf0vX8s+CSzeHuzBvLMkdQsP
 I7vOYFZQte6vB7RuVivpdNIrAN+OKPbyiMULrDQ7tmYW4f54J24X6WSkO36/qBQ1wWpMAlecWhf
 nGKQxR3qzYWOuyrCe1A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-25_01,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608250046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_224145_122205_8E790A92 
X-CRM114-Status: GOOD (  13.03  )
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

Ck9uIDgvMTIvMjAyNiA2OjMzIFBNLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gT24g
V2VkLCBBdWcgMTIsIDIwMjYgYXQgMTE6MjU6MTJBTSArMDUzMCwgU3VzaHJ1dCBTaHJlZSBUcml2
ZWRpIHdyb3RlOgo+Cj4gWy4uLl0KPgo+Pj4+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Ns
b2NrL3Fjb20scnBtY2MuaD4KPj4+PiArCj4+Pj4gKyAgICBzb2Mgewo+Pj4+ICsgICAgICAgICNh
ZGRyZXNzLWNlbGxzID0gPDI+Owo+Pj4+ICsgICAgICAgICNzaXplLWNlbGxzID0gPDI+Owo+Pj4+
ICsKPj4+IEdldCByaWQgb2YgJ3NvYycgbm9kZS4KPj4gSWYgd2UgcmVtb3ZlIHNvYyBub2RlLCBk
dC1zY2hlbWEgdXNlcyBhZGRyZXNzLWNlbGxzID0gPDE+LAo+PiBzaXplLWNlbGxzwqAgPSA8MT4g
Zm9yIGR0LWJpbmRpbmcgY2hlY2sgYW5kIHRocm93cyBlcnJvcnMuCj4+Cj4+IERvIHlvdSBzdWdn
ZXN0IGlnbm9yaW5nIHRob3NlIGVycm9ycyA/Cj4gTm8sIHlvdSBuZWVkIHRvIG1ha2UgdGhlICdy
ZWcnIGVudHJpZXMgMSBjZWxsLgoKQXMgZGlzY3Vzc2VkIHNlcGFyYXRlbHksIHNpbmNlIHdlIGhh
dmUgYSA2NCBiaXQgQkFSIHJlZ2lvbgpzcGVjaWZpZWQgaW5zaWRlIHJhbmdlcywgd2UgbmVlZCB0
aGUgc29jIG5vZGUgYW5kIHRoZQphc3NvY2lhdGVkIGFkZHJlc3MtY2VsbHMsIHNpemUtY2VsbHMg
dXBkYXRlIHRvIGF2b2lkCmR0LWJpbmRpbmcgZXJyb3JzLgoKPgo+Pj4+ICsgICAgICAgIHBjaWVA
NDVlODAwMCB7Cj4+Pj4gKyAgICAgICAgICBkZXZpY2VfdHlwZSA9ICJwY2kiOwo+Pj4+ICsgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJxY29tLHNoaWtyYS1wY2llIjsKPj4+PiArICAgICAgICAgIHJl
ZyA9IDwweDAgMHgwNDVlODAwMCAweDAgMHgzMDAwPiwKPj4+PiArICAgICAgICAgICAgICAgIDww
eDAgMHg2MDAwMDAwMCAweDAgMHhmMWQ+LAo+Pj4+ICsgICAgICAgICAgICAgICAgPDB4MCAweDYw
MDAwZjIwIDB4MCAweGE4PiwKPj4+PiArICAgICAgICAgICAgICAgIDwweDAgMHg2MDAwMTAwMCAw
eDAgMHgxMDAwPiwKPj4+PiArICAgICAgICAgICAgICAgIDwweDAgMHg2MDEwMDAwMCAweDAgMHgx
MDAwMDA+LAo+Pj4+ICsgICAgICAgICAgICAgICAgPDB4MCAweDA0NWViMDAwIDB4MCAweDEwMDA+
Owo+Pj4+ICsgICAgICAgICAgcmVnLW5hbWVzID0gInBhcmYiLAo+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgImRiaSIsCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAiZWxiaSIsCj4+Pj4g
KyAgICAgICAgICAgICAgICAgICAgICAiYXR1IiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAg
ICJjb25maWciLAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgIm1oaSI7Cj4+Pj4gKyAgICAg
ICAgICAjYWRkcmVzcy1jZWxscyA9IDwzPjsKPj4+PiArICAgICAgICAgICNzaXplLWNlbGxzID0g
PDI+Owo+Pj4+ICsgICAgICAgICAgcmFuZ2VzID0gPDB4MDEwMDAwMDAgMHgwIDB4MDAwMDAwMDAg
MHgwIDB4NjAyMDAwMDAgMHgwIDB4MTAwMDAwPiwKPj4+PiArICAgICAgICAgICAgICAgICAgIDww
eDAyMDAwMDAwIDB4MCAweDYwMzAwMDAwIDB4MCAweDYwMzAwMDAwIDB4MCAweDNkMDAwMDA+LAo+
Pj4+ICsgICAgICAgICAgICAgICAgICAgPDB4MDMwMDAwMDAgMHg0IDB4MDAwMDAwMDAgMHg0IDB4
MDAwMDAwMDAgMHgzIDB4MDAwMDAwMD47Cj4+Pj4gKyAgICAgICAgICBidXMtcmFuZ2UgPSA8MHgw
MCAweGZmPjsKPj4+PiArCj4+Pj4gKyAgICAgICAgICBsaW51eCxwY2ktZG9tYWluID0gPDA+Owo+
Pj4+ICsgICAgICAgICAgbnVtLWxhbmVzID0gPDE+Owo+Pj4+ICsKPj4+PiArICAgICAgICAgIGlu
dGVycnVwdHMgPSA8R0lDX1NQSSA0OTEgSVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICA8R0lDX1NQSSA0OTIgSVJRX1RZUEVfTEVWRUxfSElHSCAwPiwK
Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICA8R0lDX1NQSSA0OTMgSVJRX1RZUEVfTEVWRUxf
SElHSCAwPiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICA8R0lDX1NQSSA0OTQgSVJRX1RZ
UEVfTEVWRUxfSElHSCAwPiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICA8R0lDX1NQSSA0
OTUgSVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICA8
R0lDX1NQSSA0OTYgSVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPj4+PiArICAgICAgICAgICAgICAg
ICAgICAgICA8R0lDX1NQSSA0OTcgSVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICA8R0lDX1NQSSA0OTggSVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPj4+
PiArICAgICAgICAgICAgICAgICAgICAgICA8R0lDX1NQSSA0ODkgSVJRX1RZUEVfTEVWRUxfSElH
SCAwPjsKPj4+PiArICAgICAgICAgIGludGVycnVwdC1uYW1lcyA9ICJtc2kwIiwKPj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICJtc2kxIiwKPj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICJtc2kyIiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICJtc2kz
IiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICJtc2k0IiwKPj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICJtc2k1IiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICJtc2k2IiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICJtc2k3IiwK
Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICJnbG9iYWwiOwo+Pj4+ICsKPj4+PiAr
ICAgICAgICAgIGludGVycnVwdC1tYXAgPSA8MCAwIDAgMSAmaW50YyAwIDAgMCA0OTkgSVJRX1RZ
UEVfTEVWRUxfSElHSD4sCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgPDAgMCAwIDIg
JmludGMgMCAwIDAgNTAwIElSUV9UWVBFX0xFVkVMX0hJR0g+LAo+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgIDwwIDAgMCAzICZpbnRjIDAgMCAwIDUwMSBJUlFfVFlQRV9MRVZFTF9ISUdI
PiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICA8MCAwIDAgNCAmaW50YyAwIDAgMCA1
MDIgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+Pj4gKyAgICAgICAgICBpbnRlcnJ1cHQtbWFwLW1h
c2sgPSA8MCAwIDAgMHg3PjsKPj4+PiArICAgICAgICAgICNpbnRlcnJ1cHQtY2VsbHMgPSA8MT47
Cj4+Pj4gKwo+Pj4+ICsgICAgICAgICAgY2xvY2tzID0gPCZnY2MgR0NDX1BDSUVfQVVYX0NMSz4s
Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICA8JmdjYyBHQ0NfUENJRV9DRkdfQUhCX0NMSz4sCj4+
Pj4gKyAgICAgICAgICAgICAgICAgICA8JmdjYyBHQ0NfUENJRV9NU1RSX0FYSV9DTEs+LAo+Pj4+
ICsgICAgICAgICAgICAgICAgICAgPCZnY2MgR0NDX1BDSUVfU0xWX0FYSV9DTEs+LAo+Pj4+ICsg
ICAgICAgICAgICAgICAgICAgPCZnY2MgR0NDX1BDSUVfU0xWX1EyQV9BWElfQ0xLPiwKPj4+PiAr
ICAgICAgICAgICAgICAgICAgIDwmZ2NjIEdDQ19ERFJTU19NRU1OT0NfUENJRV9TRl9DTEs+LAo+
Pj4+ICsgICAgICAgICAgICAgICAgICAgPCZnY2MgR0NDX1BDSUVfVElMRV9BWElfU1lTX05PQ19D
TEs+LAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgPCZnY2MgR0NDX1FNSVBfUENJRV9DRkdfQUhC
X0NMSz47Cj4+Pj4gKyAgICAgICAgICBjbG9jay1uYW1lcyA9ICJhdXgiLAo+Pj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAiY2ZnIiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgImJ1
c19tYXN0ZXIiLAo+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAiYnVzX3NsYXZlIiwKPj4+
PiArICAgICAgICAgICAgICAgICAgICAgICAgInNsYXZlX3EyYSIsCj4+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICJkZHJzc19tZW1ub2NfcGNpZSIsCj4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICJ0aWxlIiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgInFtaXBfcGNpZV9h
aGIiOwo+Pj4+ICsKPj4+PiArICAgICAgICAgIGFzc2lnbmVkLWNsb2NrcyA9IDwmZ2NjIEdDQ19Q
Q0lFX0FVWF9DTEs+Owo+Pj4+ICsgICAgICAgICAgYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MTky
MDAwMDA+Owo+Pj4+ICsKPj4+PiArICAgICAgICAgIGludGVyY29ubmVjdHMgPSA8JnN5c3RlbV9u
b2MgTUFTVEVSX1BDSUUyXzAgUlBNX0FMV0FZU19UQUcKPj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAmbWNfdmlydCBTTEFWRV9FQklfQ0gwIFJQTV9BTFdBWVNfVEFHPiwKPj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICA8Jm1lbV9ub2MgTUFTVEVSX0FNUFNTX00wIFJQTV9BQ1RJ
VkVfVEFHCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgJmNvbmZpZ19ub2MgU0xBVkVf
UENJRTJfMCBSUE1fQUNUSVZFX1RBRz47Cj4+Pj4gKwo+Pj4+ICsgICAgICAgICAgaW50ZXJjb25u
ZWN0LW5hbWVzID0gInBjaWUtbWVtIiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICJjcHUtcGNpZSI7Cj4+Pj4gKwo+Pj4+ICsgICAgICAgICAgaW9tbXUtbWFwID0gPDB4MCAm
YXBwc19zbW11IDB4ODAwIDB4MT4sCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICA8MHgxMDAg
JmFwcHNfc21tdSAweDgwMSAweDE+Owo+Pj4+ICsKPj4+PiArICAgICAgICAgIHJlc2V0cyA9IDwm
Z2NjIEdDQ19QQ0lFX0JDUj47Cj4+Pj4gKyAgICAgICAgICByZXNldC1uYW1lcyA9ICJwY2kiOwo+
Pj4+ICsKPj4+PiArICAgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JmdjYyBHQ0NfUENJRV9HRFND
PjsKPj4+PiArCj4+Pj4gKyAgICAgICAgICBtYXgtbGluay1zcGVlZCA9IDwyPjsKPj4+IFlvdSBk
b24ndCBuZWVkICdtYXgtbGluay1zcGVlZCcgdW5sZXNzIHlvdSB3YW50IHRvIGxpbWl0IHRoZSBs
aW5rIHNwZWVkLgo+PiBUaGlzIGlzIG5lZWRlZCBzaW5jZSBTaGlrcmEgY29udHJvbGxlciBzdXBw
b3J0cyBHZW4zIGJ1dCB0aGUgUEhZCj4+IGlzIG9ubHkgY2FwYWJsZSBvZiBHZW4yLiBXaXRob3V0
IGxpbWl0aW5nIHRoZSBzcGVlZCwgbGluay11cCBmYWlscy4KPiBUaGlzIGlzIGEgY3JpdGljYWwg
bGltaXRhdGlvbiB0aGF0IHNob3VsZCd2ZSBiZWVuIG1lbnRpb25lZCBpbiB0aGUgY29tbWl0Cj4g
bWVzc2FnZS4KPgo+IC0gTWFuaQpBQ0sKPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
