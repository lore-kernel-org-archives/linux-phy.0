Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C60CFC982EA
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 08:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyPA88cu9c1LZYBmaJWnqHAm/FO9m4k6aEThBHj29/k=; b=kew/w+pRmhi2Ud
	RkhQrcqZQXVM/j6ijCsox7G+zU0SHGIWUvWdVwxPL3UXHqx9jSOdPnsmv4y2v4tmPZVlQjMv0dav8
	nso3WUcoKUNW8htiS7xOu38pgcPsn87xC2ZBD2huhBkntk7qRMa3Axg+IvM5+LkKBWYYaarTm751E
	ZfojCW0kKzKNmxbup7zTiDP3ZPML2ge/HNnOtAcBJD3PFYZoXiBiZ7xv/KlZsIfJe2uSao13bd4ln
	GcluhyBEzdftH6nvY5pX+eS0rBhgcVJXog56libIa30klIixSjuBsIT3GE114dX1ad0TVlGylavGt
	3aB4Z2xUSswzJwF2lRYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Io2-00000007dFW-28Kz;
	Wed, 23 Sep 2026 08:58:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Io1-00000007dF7-1Yox
	for linux-phy@bombadil.infradead.org;
	Wed, 23 Sep 2026 08:58:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=jGJIzHbkPr61IxzpcTeecbeYKPhxsPUWAwF7/vDMLfo=; b=WzLsPA8u6F2RQxYlY5p1j5KkiI
	apHh3Ug5TIvXXN7WY97ghA5RqT1N8zZJ/ex+FPuD/EbnSCoa8qSBKHaO25pgmt0RW51RDvrQ6qaLw
	ZI/KfvQNsxifo1D5dYgaXbiaV7IoWEFJWur3ihebfWE2AnpWL5ifJuT90/i8pTDQ5YBtnL47peLdS
	qdB04OqR0/qSxTTvoNV9iWFC0DBRehAaLXULWSBT/fGDmpt0klybgBTRhklDSnvFCqm63Y1Pa5MkX
	+GacWvxQHY/hCygyJxfpJzkgl/XXhMvym85HfbU4Xq63bYdB1EpUMBftSilcwm91tK0NMW93cyKuM
	T7iQ12rQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x9Inx-0000000EYK0-2xH7
	for linux-phy@lists.infradead.org;
	Wed, 23 Sep 2026 08:58:20 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68N8JNXq2854115
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 08:58:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jGJIzHbkPr61IxzpcTeecbeYKPhxsPUWAwF7/vDMLfo=; b=nAgNDQsgCam1E9vo
	/wdMED5YTAXYJuHQlykJJd6Y9Zeo9xU6nHLShLzRpnnoAn5lNOmob2t5y/nd+aLR
	LhLWnsMc7HtDQsKsfmdI86bFaNm0JY/NWXMS3VzayZfrJcrmBz+hbkyV8tTDj9oc
	GOiYCUg+g/dzGEpWQP/xHWMI7HjwOc0cfEufmHPWHLdqYva39mRP970AxXbVI84c
	tbr1WEzgoMYp0STCjhh92fR1/IeLPvxX5vFfy1wSULPPO98LBGtqKSIhNwxlrRP+
	refRGJXR16kNqtATzvqHci/H/vqrZL0B8hS4jjRFXq2Gi6UuEhBMTaEMA1TjcPwt
	6Z88Ug==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4guymw327a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 08:58:15 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2d6f75c1219so9502295ad.3
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 01:58:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790153894; cv=none;
        d=google.com; s=arc-20260327;
        b=oFuPc+pQk7B5vag2Nx3pbns47ZQyLzxTd6XIgma1DA8p6UA8G4ImoAQVCyTMh1LWgK
         oqw3csv7BONQy6JGUX45QYX1m5Ty/ZKWtgp4nlH86SrrWfaKnF+jDgfKuPR7RgUt2M89
         DXhBM8L2gWHi57OIbDNaN8WXUbKXwjo399bZ8NnVJP4zkR3hjS8H0AcKSqvsnzUVAHv3
         Bu1za09hX5ITA1AHlAfKITfrBQEfpcpx0QPtviVYcwIkF7Y9eR4drHUG9yhC0Jf5TWyJ
         HisRcucU1qV4+6OC6SxV9q5AwKtJzGC+ixXRATa28LrPlce4uk2G7pcKNoeULG2HwakU
         tSZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jGJIzHbkPr61IxzpcTeecbeYKPhxsPUWAwF7/vDMLfo=;
        fh=hWMV4DODUi8TNVPUGdX5WBqKVUQZPqtFaEv+IQ+kn14=;
        b=arzDhbEeMzzkkFNno8I8DFB6bhBU/u7OCzmbYmq6pGOT77wDzZ58idkktU29xBM11p
         j+wiPgjwYm+yrlEruDOH1jNZGHIXtsCn+PIvl9cYa6QCMn9np4KTi5gdAIvTr76mQTmO
         WaYUP7bL9kj+D+eDlvMo3pvpFB0/5+J/lQSB67ZZbOYR9nJ7OSRaSyzxBCC5ZUvnCJ1C
         e3ETZVkGDwMtQELpiH81LVwYD+Utg8t7X9Ki0ivzJqvxEE0RO9VeyhM5VNuqmnBIp+PP
         WGpr2UVX9D5KS9xF0pDIxD+Ng7iiJnnLHgfA6uDOh86PQqd8/r+d1ZTOJ8I7T0uOQ4Tq
         wVxQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790153894; x=1790758694; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=jGJIzHbkPr61IxzpcTeecbeYKPhxsPUWAwF7/vDMLfo=;
        b=KsriEfeIBxCFTC1RzsuKl/4XTkR4qwGYtfZMKU/i0PM10ElrMKFhVi/l6+CpBAA+KJ
         h3DaAX0wCDnE2MpDXMuJ7yQ7aMdxmdWAFrHF5261S0aKE3LMokVaYJ56dpyIz+oUkujH
         qJdZ+k1qycjaJ3sw6jnuWc7vYg3u1pqCg+zt+aJcQ/bd9gLph9pMWJGN5M3Na045A9Gd
         3Mvcb3hZ3ON6DLKYW65JKccO4v6dqWsb1fVR2yJU+qKfTjj6sIFrWxmAL2sJ4ttcOKkm
         9lO9TrILudBYky0Lm07OcGdhUeU7QtoAlQei9Nxe5KWnFUF7jzstYHuGjDmkQcv3EBp7
         BsQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790153894; x=1790758694;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jGJIzHbkPr61IxzpcTeecbeYKPhxsPUWAwF7/vDMLfo=;
        b=HRUNjcQz6y54G8Yf+NTYHvxaeK3kGSBwRFdp9+qI8myOAtamgFknjH2SaubZmpnglf
         7qW2u2/Lu1kxXeiJIhfPQ+oYqZJsbftKPBvxhK7zKmiOZcGhCjWhAm/3NQqm+DZnyv7k
         cocWZvnOkYHqQ2bigL7RtL4w/Cze3LKlazS26r0DtwlD6mAG7J5nhiHERmqnGp9LObm2
         tA0HtKrsjxJ4Jh2IBm/gwUL9rT+wGbI3o5LzzC0NYbWUz6yMEiHoR6m5jmk9wjy3NB8/
         kBia8C/yZaz4znSoFp/ECKHxLKuQVxKEfYv+X3Fj84b/gEqOaRYXd45t/EBJjT2+2BIY
         G2Xg==
X-Forwarded-Encrypted: i=1; AKwUvBxHVVFqmuc42nbi2jXGQRnr9+wy3JZ+gkoxTKNWQsEtmFmqTa03pBGI0reYP6daYVi+5y758knDQYY=@lists.infradead.org
X-Gm-Message-State: AFuF++m8OdSRdBgmNWyU30HJkXvTbZXg4AmjXrByCiSw8lk7DeEn0XfR
	Wxu9n141SKzH2BGoVgPnUujoQyAonv/VH6C+k+lE2KAjLgtyCJncN4NS+YvzyEefw8O3lVwmPlI
	q1NPoEwIgvfXLwpZp6X/NcLkJgvrOzpbL2lZkRPoJrYt1QLXgtt/4faRpaU6HZYw0c8ANlJbLs3
	Nm2VvsR/hR2SVJQ4fRTD/rS1GMCFabacBfdNeRUjtDC8o=
X-Gm-Gg: AYBFou343rjNPMfXACavSbyatPmyLQQhIDVM0o99cQEDxvl3t8eOadNSap9vPWSWqit
	ztL519cqFvrTtM3mQnZgTYmq2d6tFnswCA/Q6eGWVSJYDJyQWqmtXcd6xswG+pqra8mWofiJa6M
	0EL/cnuqRKP8LLoMpf+3zf2mJQC4AgtXoPivnEWpC1cHKFt9StkuAsrDdJSg==
X-Received: by 2002:a17:903:1a86:b0:2df:5a5b:5763 with SMTP id d9443c01a7336-2df69d1ae2cmr17991765ad.10.1790153894483;
        Wed, 23 Sep 2026 01:58:14 -0700 (PDT)
X-Received: by 2002:a17:903:1a86:b0:2df:5a5b:5763 with SMTP id
 d9443c01a7336-2df69d1ae2cmr17991615ad.10.1790153893999; Wed, 23 Sep 2026
 01:58:13 -0700 (PDT)
MIME-Version: 1.0
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
In-Reply-To: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
From: Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>
Date: Wed, 23 Sep 2026 16:58:03 +0800
X-Gm-Features: AcwNN1UZNW0WwmsWNc-3C7OHdDr5-ws6w2MX2XvUgjm7pentkYd7E7-hxDcU_-k
Message-ID: <CAFkd8hvoUi3dyff8w72pmRHce0XDNUepCsR=1gtimFMgA6gmBQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] phy: qcom: sgmii-eth: add Nord USXGMII support
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIzMDAzNSBTYWx0ZWRfX0WAUu5eYVIue
 +50Z6VO+5vnYxm+juWWVEitksrHytZLZFT5bQC03p1Cd9xVi0JMuVeHD+Js17+8FVpZENcIwdwE
 7JEC/qDCOJX0pMofVrlzkNwwsqRsQ337f0J3y6FGBmSB2/H1qwMHbmfnBNBde8L+PxiUNL8t53A
 vf2patnc2xhkNsFDnze3wnpGAyPH0GaMcebBQLkmExhodNg2pkeDu7d/EgkmTi0Eh/IH3SyzRH7
 wLo3j8KEM4cRcxxAutEQABTrKOtN9ezV+Acl+FEn7e12m9NEwgANih4NvMvujqi9xdmNp+2XseY
 2dTOxRBZMxvuMO2UYDzovs+/dd84DAiOdTTF1WMyfdYOnRWFCdgcaNk5kKQZmVfqsTKH/xJUNiU
 uE2iPdXiuokLOzeV2y7xc73iFgtnNUhZ4/CV682kdeirzGGv6v4Zh/tpr1UwWWp2KbUhppUnSaf
 4AjdrdQBqj8gc3P8l9A==
X-Authority-Analysis: v=2.4 cv=feI4WEQF c=1 sm=1 tr=0 ts=6ab394a7 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yOCtJkima9RkubShWh1s:22 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8
 a=mh0Q8UrwBuG3fYCamwUA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 0KJ4mdOqeQf6xVdyhQRp9HLdUcXHGZ0q
X-Proofpoint-ORIG-GUID: 0KJ4mdOqeQf6xVdyhQRp9HLdUcXHGZ0q
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIzMDAzNSBTYWx0ZWRfX8hAF1O1WruNs
 B3GHFo61zHhc0KNKPBulU/pADCFMj4AhClEYxb3S2RPRb53H+m9sVynCxnb0XMMHcHGngNxBgup
 VWHYTdJsXmokf3TTjjAnhjjHX4K5HZk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-23_04,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 clxscore=1011 impostorscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609230035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_095818_414923_8D5212B8 
X-CRM114-Status: GOOD (  22.77  )
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

T24gV2VkLCBTZXAgMjMsIDIwMjYgYXQgODowNOKAr0FNIE1vaGQgQXlhYW4gQW53YXIKPG1vaGQu
YW53YXJAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHNlcmllcyBhZGRzIHN1cHBv
cnQgZm9yIHRoZSBFdGhlcm5ldCBTZXJEZXMgZm91bmQgb24gdGhlIFF1YWxjb21tCj4gTm9yZCBT
b0MuCj4KPiBOb3JkIHVzZXMgYSBRTVAgdjcgU2VyRGVzIGJsb2NrLCB3aGljaCBpcyBhbiB1cGRh
dGVkIHZlcnNpb24gb2YgdGhlCj4gU0dNSUkgU2VyRGVzIFBIWSBJUCBhbHJlYWR5IGhhbmRsZWQg
YnkgcGh5LXFjb20tc2dtaWktZXRoLiBUaGUgZHJpdmVyCj4gY3VycmVudGx5IHN1cHBvcnRzIHRo
ZSAxLjI1IEdiYXVkIGFuZCAzLjEyNSBHYmF1ZCBjb25maWd1cmF0aW9ucyB1c2VkIGJ5Cj4gU0dN
SUksIDEwMDBCQVNFLVggYW5kIDI1MDBCQVNFLVguIE5vcmQgYWRkaXRpb25hbGx5IHJlcXVpcmVz
IHRoZSBTZXJEZXMKPiB0byBvcGVyYXRlIGF0IDEwLjMxMjUgR2JhdWQgZm9yIGl0cyAxMCBHaWdh
Yml0IEV0aGVybmV0IGludGVyZmFjZXMuCj4KPiBUaGUgc2VyaWVzIGNhbiBiZSBicm9hZGx5IGRp
dmlkZWQgaW50byB0aHJlZSBwYXJ0czoKPgo+ICAgMS4gQWRkIHRoZSBxY29tLG5vcmQtZHdtYWMt
c2dtaWktcGh5IGNvbXBhdGlibGUgdG8gdGhlIGJpbmRpbmcuCj4gICAyLiBQcmVwYXJlIHRoZSBk
cml2ZXIgZm9yIFBIWSBtb2RlcyB3aGljaCByZXF1aXJlIGRpZmZlcmVudCBTZXJEZXMKPiAgICAg
IHByb2dyYW1taW5nIGFuZCByZWFkaW5lc3MgY2hlY2tzLiBFeGlzdGluZyBTQTg3NzVQIGJlaGF2
aW91ciBpcwo+ICAgICAgdW5jaGFuZ2VkLgo+ICAgMy4gQWRkIHRoZSBRTVAgdjcgcmVnaXN0ZXIg
ZGVmaW5pdGlvbnMsIDEwLjMxMjUgR2JhdWQgcHJvZ3JhbW1pbmcKPiAgICAgIHNlcXVlbmNlIGFu
ZCByZWFkaW5lc3MgY2hlY2tzIHJlcXVpcmVkIGZvciBVU1hHTUlJIGFuZCAxMEdCQVNFLVIuCj4K
PiBUaGUgY2hhbmdlcyBoYXZlIGJlZW4gdGVzdGVkIG9uIHRoZSBOb3JkIFJpZGUgU1ggcGxhdGZv
cm0sIHdoaWNoIGhhcyBhCj4gTVYtUTYyMjMgc3dpdGNoLCBydW5uaW5nIGluIGZpeGVkIGxpbmsg
VVNYR01JSSAxMEcgbW9kZS4KPgo+IFNpZ25lZC1vZmYtYnk6IE1vaGQgQXlhYW4gQW53YXIgPG1v
aGQuYW53YXJAb3NzLnF1YWxjb21tLmNvbT4KPiAtLS0KPiBNb2hkIEF5YWFuIEFud2FyICgzKToK
PiAgICAgICBkdC1iaW5kaW5nczogcGh5OiBxY29tLHNhODc3NXAtZHdtYWMtc2dtaWktcGh5OiBh
ZGQgTm9yZCBjb21wYXRpYmxlCj4gICAgICAgcGh5OiBxY29tOiBzZ21paS1ldGg6IHByZXBhcmUg
Zm9yIGFkZGl0aW9uYWwgUEhZIG1vZGVzCj4gICAgICAgcGh5OiBxY29tOiBzZ21paS1ldGg6IGFk
ZCBOb3JkIFVTWEdNSUkgc3VwcG9ydAo+Cj4gIC4uLi9iaW5kaW5ncy9waHkvcWNvbSxzYTg3NzVw
LWR3bWFjLXNnbWlpLXBoeS55YW1sIHwgICAxICsKPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXBjcy1zZ21paS5oICAgICAgfCAgIDUgKwo+ICBkcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtcXNlcmRlcy1jb20tdjcuaCB8ICAgMiArCj4gIC4uLi9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcW1wLXFzZXJkZXMtdHhyeC12Ny5oICAgIHwgICA5ICsKPiAgZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tc2dtaWktZXRoLmMgICAgICAgICAgfCAyMjYgKysrKysrKysr
KysrKysrKysrLS0tCj4gIDUgZmlsZXMgY2hhbmdlZCwgMjE5IGluc2VydGlvbnMoKyksIDI0IGRl
bGV0aW9ucygtKQo+IC0tLQo+IGJhc2UtY29tbWl0OiBhOGM1OTFlZDZiNjcyOTE1ZTBiZTU3ODQz
Zjk0M2EyYTcyM2FmZjQwCj4gY2hhbmdlLWlkOiAyMDI2MDkyMy1ub3JkX2V0aGVybmV0X3NlcmRl
cy1jNDg2ZjcxNWYzODMKPgo+IEJlc3QgcmVnYXJkcywKPiAtLQo+IE1vaGQgQXlhYW4gQW53YXIg
PG1vaGQuYW53YXJAb3NzLnF1YWxjb21tLmNvbT4KPgoKR29vZCBKb2LvvIwKClRlc3RlZC1ieTog
WmhhbmdmZWkgR2FvIDx6aGFuZ2ZlaS5nYW9Ab3NzLnF1YWxjb21tLmNvbT4KClRlc3RlZCBvbiBi
b3RoIElRMTAgUlJEIGFuZCBSaWRlCgpGdWxsIHRlc3QgcGF0Y2ggaXMgaW4gdGhlIGdpdApodHRw
czovL2dpdGh1Yi5jb20vemhhbmdmZWktZ2FvL2tlcm5lbC10b3BpY3MvdHJlZS9uZXh0LTkuMjMK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
