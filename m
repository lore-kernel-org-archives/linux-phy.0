Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6F56C88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 11:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LuEzd45Qier/sQ7PSrUPireK36T6BqMZvVTCgCh6IbY=; b=RZQsODekueAnd0
	utZSbZeuP19qJ9Feh1Jo2/BcoAJCyX/6aCZFuwkIuguLBHlbXVFjV1J3g5slzH16j0koA1CEqjZlp
	u0tz1xUCazoBGyYM7ktqvnwOxBojZVu9kM5whXFmyyGcuzGO14ttcZhpI3LBMqpPxnLdqz+sTmYJY
	caQw03UNJcOGPThAAVzkP5yMkjwUsqBAPHPTXL1uX9WGm/eZNXpfgS1IjUS4kJby1S8F5K/ew/xsG
	MH4hTVUCJzUP2cbWXma6OA+Pvg0TO/rjzJdMWifphZQSh8tXRy2bSHaqUHxpSqO9PyGZY3W6Hvvam
	ga22Wk8or8yUNtedYJdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7AH9-0000000BBWe-1grv;
	Thu, 17 Sep 2026 11:27:35 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7AH7-0000000BBVo-1Kbo
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 11:27:34 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68H9ZoC21698624
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 11:27:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OgcTSEHaAwYct2xsNsod6FocmTJhW8Zm9+CguoUYFIc=; b=S+l3vPKMtdLsbXdE
	5gYrNuZK9xoaXKeb+M97XMw3nWWKgt5Q0UikL8dNidESMfFWuCzPyJpo5p/CDoef
	z0frx4nvX3C4ukVntu68gW8zSp61ulPyYZF3+vHMImReXAS/OZWq8NhMKvs5+KUa
	i6uXUd6GUtcJzMb81zsN+0bPfYsMCa0uoGbA+rbVRMH/dNyQu9cbgK2A2jVN3WWh
	unZ31ZcLAn6kxlR7QA3BZicx/mVnEYAXYMAHXXFQ6zjeYN4/FL0PBeYViJ9v2nf3
	HojgE5BQujbS35HB8pnFiz6YHVBlCTLdM+xitpM3eBUFX8vv4j32ZAQmCfP1jhwO
	X3zuFQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqxayc9h3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 11:27:31 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93a18b457bcso17647485a.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 04:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789644451; x=1790249251; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OgcTSEHaAwYct2xsNsod6FocmTJhW8Zm9+CguoUYFIc=;
        b=NGc1d/1nc+aAYPyFMd3dT4rEljXRm+DjXACtdZ7/qO3OzfM793tXyl5k+/IjmFpg+p
         ScJ8+j4jy/yXcOaW9QJjdFZrB0L+OAd2nzzOzBQzAA1VhGQeA//6Vmvf9agVH07dhscK
         um808dWPIscBqQd4K67PB6Th0hc7l1cEKNE85/WbkIyqKrhzrYWSUMGWVAj0ag0/b1MH
         6OirfTZZQ1sryvGP40cP+66G8+dfwYpGiJDsS7JyxE6V8aMX61XUBZD/kjOIkEEatXlb
         ci9JlraJSxErmHEDJsJe24lSwJmCXprjAbcD8ugL4wsXHTNTfDpkmFwNfUoqJLviRrW2
         N8Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789644451; x=1790249251;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OgcTSEHaAwYct2xsNsod6FocmTJhW8Zm9+CguoUYFIc=;
        b=LI7a4nmOqt6KtHUbriEi9UtUrUDyoccC2iL/obMquzVpIX2Pija/3w+Y39BE7q8onk
         vziOztrNs5S2Q+bb5TqNp8k5QIth0N/+2fAAEcz5FKnbHYN/IrrcZGDRWiDzSIkm3beU
         pa1rYM1hhPi/AE0V1NWneUWXr1ou4WUU+GFTqx0f/j7chZVut3J/otBbbteartAbLrNW
         gj6bUrKvORN9T+a7advma8CKNBEfPwGwVoVkBCBddHgzWewcUIl747hoy7S9Z5i2tPuC
         q5dJ9vsmFgikmGYYVNDRqEcOd4vXUPj9cQ7bPByDFnOs4x8q1EtrJFAUl/RNrJdI1kbq
         +q2Q==
X-Forwarded-Encrypted: i=1; AKwUvByj++nnlOJKtFBTIniRN0VCTTiiGzmgl3+iKQ0Vm3jMYshZxJEGZv27cd5hP0yyO1dELoYBDn1ybB4=@lists.infradead.org
X-Gm-Message-State: AFuF++n0MFVdIdPMi2hDaIvbiIXSGfFDD6dvCvnTyvk7SHCf2IJVsfVI
	fvgfy+IlAXRKEbBBKrKCzlJ9Np8h1TbP4aTDnRd/9f+6BWvj4LGg0HnsCuzIwuEFXYu+UvEs6Ez
	4CUGQBcDr0WzPZZAdmzQ4XUkPNP+sNpu28rNF8lR5vcUqQKVshzHeUc7kgIcyVKAYwz4t
X-Gm-Gg: AYBFou3/8/EFADXfrHSAnrQohoF9chmuhGUVfCf6EKVXhPFJ2Iu2T2ZbaR+kkHGp1M0
	sCEm7dfBDbYRtvfXXPEjFp4sdst9/H5UpVkG9UpnM4CSMfUuhZ84wFQwcgZZMGX9fZu36EBAV3l
	hZoy5huoMTJCnFOeDKcnNEllIJE+9pBjN2fSt/NMEV72q3ey0B9OUzSWmCM/63Zp88Oe//WYxZi
	Vztq64q0AK9lnV0XPVTFSQ+wMuDiAzFz3pBC00SRjgMqhM6km1MWVRoJqBpMLnMb4/TkQdhz+zp
	05FJTiLn8I1kP7rFtEQ4Eomc2vvM+FX7XqZnS5kZFVfZPY0FgyUO8bn7ifpMG9cGici2WHcSJO7
	kzGHWbMQTqiENWXv4koGR4A==
X-Received: by 2002:a05:620a:2b91:b0:93a:1312:ff19 with SMTP id af79cd13be357-93bd3e63ae5mr76971585a.5.1789644451266;
        Thu, 17 Sep 2026 04:27:31 -0700 (PDT)
X-Received: by 2002:a05:620a:2b91:b0:93a:1312:ff19 with SMTP id af79cd13be357-93bd3e63ae5mr76965685a.5.1789644450669;
        Thu, 17 Sep 2026 04:27:30 -0700 (PDT)
Received: from [192.168.202.12] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de4879f1sm283709066b.32.2026.09.17.04.27.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2026 04:27:29 -0700 (PDT)
Message-ID: <4d654b9d-4940-4f0b-9428-6332a5223d60@oss.qualcomm.com>
Date: Thu, 17 Sep 2026 13:27:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: (subset) [PATCH v5 0/5] USB4 mode programming for QMMPHY on X1E
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260908-topic-usb4phy-v5-0-73aac69578ef@oss.qualcomm.com>
 <178929702551.215437.16496561815731000218.b4-ty@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <178929702551.215437.16496561815731000218.b4-ty@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDE1OSBTYWx0ZWRfXySdWDN6z9Pep
 Xqz+PorUgvlPSWiyxmB696AbtnjUKMo/RCmQfSi5+OJCAN4pugt/NSarJKb1+0/35yo3zOf7szP
 FIRZ2T7l1BFRZnnFgfFA9wmTo0pKAODQvoPbWFZKECHucuvpBPtg/b8182xIAxSR4uC/qBzqxXH
 yPvUxvoXY+wtXcjFTLOJs5m8wMXhzH2Gc7egwqIcX8GxdNeIjPe4l+sNCfjLZEDkWnjzposbMj/
 jhMpnLTY2Nr1YOqHo9E1zR7FROtGzxAYvrOjqQBNzixNyH4KakOUs+WCpmz3rqBtYNu1LcetZx5
 cwfKYyeeVLFm4R5dKCvndgM50eYi62vWyjpHtYYKwZWdHPp6aIi0JpN2jJoVkykqOI02nJZEPdw
 f0O3HOP2KDREgWIEuSA3cJN9j16x4rT5eZZ7HgvdwcLOQeXatfAp5AVmcpHrh14WbmuYHYndu0m
 fG3IdTAk1dJeRpTfeug==
X-Proofpoint-GUID: 4cD5vvjaNC_J4OXhKfL-7O-eKCKasFiL
X-Authority-Analysis: v=2.4 cv=EoJHPicA c=1 sm=1 tr=0 ts=6aabcea3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=j4MFFCbetrfM6ntwnR0A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: 4cD5vvjaNC_J4OXhKfL-7O-eKCKasFiL
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDE1OSBTYWx0ZWRfXw0YOOZPNxSTj
 Qz+LfPmWENqMHUUSWspryeeCUNRd7T3tCIUn9yx2mcyE4Xcp0sRowH27Ay4Q3kCrFqjh1Fc+h5f
 Abg+Datg3sC4DGeMLSTKpw3/LEZiRM4=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609170159
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_042733_477189_CAF5928B 
X-CRM114-Status: GOOD (  13.50  )
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

On 9/13/26 12:57 PM, Vinod Koul wrote:
> 
> On Tue, 08 Sep 2026 09:54:04 +0200, Konrad Dybcio wrote:
>> The USB43DP QMP PHY, as the name suggests, supports USB4 in addition to
>> DP/USB. This series provides the necessary plumbing to switch to that
>> mode of operation on hamoa/purwa.
>>
>> This is achieved by exposing a third `struct phy *` for the USB4 sub-
>> PHY, which will be toggled by the USB4 router driver, living within the
>> Thunderbolt framework, which will be posted separately.
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/5] dt-bindings: phy: qcom,qmp-usb3-dp: Extend X1E description for USB4
>       commit: 1b8595f4cc9f4029d11ea1957a4c9b4bce3f6872
> [2/5] phy: core: Define TBT phy_mode
>       commit: bc70554e6294d71fde45895223881a4ac3769630
> [3/5] phy: qualcomm: qmp-combo: Add preliminary USB4 support
>       commit: bb8955305318217526e6f9e93ee150888d91d4ea
> [4/5] phy: qualcomm: qmp-combo: Add USB4/TBT3 configuration data for Hamoa
>       commit: 0e1288af882068dbaf6e64808ba23c95a80dc916

Patch 4 is missing from your branch and consequently from next, other
patches are there

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
