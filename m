Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92DCEC531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 14:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4xDYi5unwLgbQQsiGtZMdffe4DGmfi15gIsDaTM+4M=; b=cG60HgwYHI5eyc
	3e0YEY69QZXedxlI4vfkoY6PY57u1sp49Oevk4NWEwq8Tpm2tR79hiLLgNuxE213C2L33RUOX0kFI
	G7i8bTD2pUSyRsVHTHXlfb0KD6v7DgVGm6rHD8tUBBSArqyaQ4iXtK+Pg7UC7+RcBgvkORVYhoAr2
	mq+0Vpw59fAx1pcX7vKzvauN9s+nxRSuu/+3Lfe/EXffyy1t+CvRAHR9JxKb+TEheEWqe8DOtvFvX
	ZCWqb7jYeYRTnDyURXnqoMrvN9BmlcdCJ3IBCoFPAfZRnppw7S+2MkxjwJWhXdLmps8QgIYzFbRDQ
	o7BDjd60xuwtl7hoMWBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woM03-00000002wM6-0GMI;
	Mon, 27 Jul 2026 14:08:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLzz-00000002wLZ-2dwN
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 14:08:08 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66RDlW5O3895516
	for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 14:08:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ziM/+DZgXdtc8jAKvQe7Pv3QHaJFJ4hODKr5LhR/F5A=; b=LqFB14XVzXSoXJPV
	6fg/i3jo8UBicp8ao3JGET8O+KlzNHzMjlNNToqidG/fivAVXuS6KSvhECin3Z6p
	vRmg6vj2Xsp4JYelDqk+aorwSq18IfRJWeTZlkhYwERMoycfj1ONwsacjRW6zuF4
	fmIqDiHGm48ZcumBti+gzQoFpzy3XZuFxxCP7CJ3CObAoMJIcFKa205+1NauipU5
	fBZLNUNJzYamMgjDzsdj99zFlJBpIKFS46+gllitnQhQc2k+QpxELQtgyVGr4qgw
	JlLOegwK/B4EPmDf8xMqktmOiTLWxl+a3/1JVoz31N0rwgVJTvADG+AWOCFIu+rS
	pzDoeg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fnsxs2wyn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 14:08:06 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92e6cb57d25so12016185a.3
        for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 07:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785161285; x=1785766085; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ziM/+DZgXdtc8jAKvQe7Pv3QHaJFJ4hODKr5LhR/F5A=;
        b=d3XHb0HosWmX4CuM1gpHWg4sAnqvNThN7xPRuvyAKAWmjkR10EwpA/WG7lHnF2Oym4
         lVu/5qLKVKbgu/QIZHBKEBm8/PGA4ZoCy26IkraXflFCifu11RIIzciicaXOeD+IpMOs
         lejdnjP/x2o2U9PG+m82g8OxNI8MPas5iNvjCSqU6uaj7AIMA39X05vRefS0NmFtbHvf
         5UigTgL+/8LubcHGtmKzP2pFvZhlf6csK7RbOgiMDheoJHQNo3noSdgpX6iV0491M3Nd
         CMKME4S1WtVBZIzQa02FYFuwyPPyqr3zk61XSGwlR2aYvpAhPHQLSHpi7SKUbAT5/kqz
         BYgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785161285; x=1785766085;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ziM/+DZgXdtc8jAKvQe7Pv3QHaJFJ4hODKr5LhR/F5A=;
        b=iZO6LYr7YaqJzTL2w01TtqAUdjD5AVq8/Ip2v6/Rxt9Pq90AeLgpUYuDiyNQXmSt7i
         J/RWQ4G5O4MptsxRuNgaKk1dnOj5T+FKfOKUa+1BxXvuYz3Tc8OTjgqwZUHoUDVaJGFx
         xeFMUNRChMKGWI/nszIrnspKAApwRUGCVd78j2nZHyCWOCU3KJHZf04hSyBz4Q4A47s6
         gGzamvc3DXOpPiNuXUzQFqbMM/1kLL1kwLwU8VHfDRNmZJZSWXUc0ipwrlU4Q/7i9dNP
         ec2X7XCxcDtZ2WtAXfNcmHy6CZeQmvuaXm3RzLrT2q76B7T9IGoefeXHxbojuyEZDqCn
         TMRw==
X-Forwarded-Encrypted: i=1; AHgh+Rrst8ICL10uA2MqJImfBe5m2LTpfhCLKYQBAQv+cdCcZE3oJwjIyTnvvEVIkpDjfU6JCmgghdaB/b4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwP4gY689QP7KtEp6lO6enkKrHQqHViHXF2ydq1u6xruzR+iqCU
	P8h9Lhh5E6QqpRzRwXQTqmV/cyRb/vjA5iodHIgvIpVKrJ4WnarePP2VDjJE3vTnzQt6vD/y1fz
	zUsljqnzQ2V+vlHZUPoiQI78+2z+0khk2rOrdl8s2ltleVHOD+HHgBf+z54IP88wDlWVl
X-Gm-Gg: AR+sD132CBY15OerW8u2Xfix2ZBFkXGvqcsgYX/uYVcbmFqRJ01uyL9wcJFUmV2Ogm1
	s9oMlEHaceBrtNl5VdnMv2jgdDslGpoXZeSF+tMqIZ5/wfSfjKspdt+cbXnqf+g8DW+5isxBS4u
	btZC24OF+SLsSFmvGaRwN6v361K7j8SwKYRXuL7cVhTYnWquEEMLSsK/v+tAwstgjbAMlN1vS0i
	6SxgRLdzVtMEzS6/d1nBBkQZzIPJGeIE2/JvWHNOTy3X+WUixlegtogSzouMpXp8kbLD2Zn1anZ
	wMSOEe3A/oE1niicsCGxFml/PwA/Y/mdq/9YSDgFN+6ZsK6abiDLNoU8DjRtadeuehEO/3ZxEf5
	jmGUd9BV5Lle6H/FGBCt04SK9
X-Received: by 2002:a05:620a:ab08:b0:92a:d10e:bde3 with SMTP id af79cd13be357-932fc00dd43mr26437385a.3.1785161285403;
        Mon, 27 Jul 2026 07:08:05 -0700 (PDT)
X-Received: by 2002:a05:620a:ab08:b0:92a:d10e:bde3 with SMTP id af79cd13be357-932fc00dd43mr26431285a.3.1785161284738;
        Mon, 27 Jul 2026 07:08:04 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ebb385sm651388466b.52.2026.07.27.07.08.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2026 07:08:03 -0700 (PDT)
Message-ID: <4d0c2aaf-f521-4527-9e53-3c63f6930667@oss.qualcomm.com>
Date: Mon, 27 Jul 2026 16:08:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/6] arm64: dts: qcom: mahua: Replace pcie3a/pcie3_phy
 with dedicated pcie3b_phy
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-5-65c8469c6b65@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260724-glymur_linkmode_0724-v7-5-65c8469c6b65@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI3MDEzNCBTYWx0ZWRfXwQn4CKVqz4OC
 zn9Yrzub1zvUFod5qPcXkB6Xdt7cw5s+MI2yf5eQOmj1FSTpcI9PkXIxYcnxVPKSiIfKh5dGYK1
 KnXIM2IRoKXdL53ueJN4NGGqNHYUn6qAQ0B3YsAn5YVvX7/RozFpQdHNC0iZfEPrSqC58OWck8c
 7g02y9vcSdHeOHCsG5tPAhtI+WHIoW7HyLZLZZJkwWDb1AUp6xo3LhuNiOF8CsKLlaQ3fTc0sW/
 X17/LUMAMkMrrdrWF1YhwNfn5m3VCy6dJBjRsoEJZR7FNLYD1De7XvkIveNDXcHSsi5UUXWaBeM
 6p3yOMoMTh7rCTMKzqyUOwZkgq2EX3Kr4ptOkEL5cTEQdYxIjFOFj587FcMWWc+lHTEXPSwjeGm
 Cn+soFLE4QXFsUSeTnfnEm8IQqQkL1dVEkHTxnmYOOx5tEgIcfsj1vrakq1BCFrXSXm+K01OTGE
 XH9sq2m7G88nuZTGKCA==
X-Authority-Analysis: v=2.4 cv=EYr4hvmC c=1 sm=1 tr=0 ts=6a676646 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=GN4xtFq8P7hki0q-dAwA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: BVt5JNBww3bS-hAvYWtBr3qnwIKzFQrO
X-Proofpoint-GUID: BVt5JNBww3bS-hAvYWtBr3qnwIKzFQrO
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI3MDEzNCBTYWx0ZWRfX0m6pJnaeLi1C
 EG2XDdzzLcYFTGaqOX7iXB8VbGv1ZnnC2XnfEZEjEc4ALbL0q4nZ0gRBxylUnIai2687XjEip2j
 vaLY+ilm2A3MAtPBhCVxSDJg/EOQsU0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-27_04,2026-07-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607270134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_070807_794862_1C9AFBF8 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 7/24/26 12:01 PM, Qiang Yu wrote:
> Unlike Glymur, Mahua only has PCIe3b wired up; there is no PCIe3a
> controller and no shared Gen5x8 PHY block. Delete the inherited pcie3a
> and pcie3_phy nodes, and add a dedicated pcie3b_phy using the existing
> qcom,glymur-qmp-gen5x4-pcie-phy compatible.
> 
> Point pcie3b_port0's phys and the GCC pipe clock parent array at
> &pcie3b_phy instead of the deleted &pcie3_phy.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
