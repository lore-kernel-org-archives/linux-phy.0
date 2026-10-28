Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE914606A33A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MK1ap0s4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=O7TMPUPh;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=FN3EmDvl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oGy3X4hQbzRE30WajXwZ66caHKmbqRrWSQy8bMVlvUU=; b=MK1ap0s4mRvvJvuyP5f5jRaj/S
	UeUa4VNa5sqGQZ/GsrVjmJM0ANEE2IZS9SZmzo4AaUXYq47zNGEIv4kIz2z0A3sSH6rYOsYEbRZTR
	JXPHrN91VNk79Fm6X92orVoOnrl7cLK/avpirj93YkWSXwBMIzaobCflWswl8TdB3BFDZLmXhgT+p
	pMOXoJ8CLL7uEpDRtcG6Yja+IC2K87AqGEhOcltgxhhvYVFAgpLvySn8Z499Nhqhrog2ijhgboWc4
	Et3cL/Hlf4x4f54OslkbgqmnBf2m5/XFc4K5NLOrBTglZT+o5mdTz3+NrrKyuHxBRc73XnyPYGv0m
	jo6GKaaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5Wb-00000007MtO-2LzM;
	Wed, 28 Oct 2026 15:25:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5WY-00000007Mt2-2V9F
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:25:11 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFB6Qk2070802
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:25:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WYDXrDV3B7esNKlNVgZYwMfud2hi1hHvN019zxOjdZ8=; b=O7TMPUPhghvL6PoQ
	t4D+cqFyPHXysIIdMkLBOmQ3v7ybcrGH2VG2eN8mm6JasWCvZah5erx17n3ZN+gt
	0yI9FTlqR9dHFBejyU3j8UzEOp8rCpjIbIXdyABz3HDO1MDryIbvE06icVimf6Vf
	kU7jsPrmbZLgWZ9lJB9bJhkFy2mcm/xbFZbFU/04i86Hs4g+b20SsT99n8N/eGOd
	Lg4dqIxddKUSnFEp2xlUWYYIsfIJPp7eHBaQurwdvJmQpFDLBma29kBhByJFJIJ3
	5GH8f68SngkVz2yWfYLkRDl9NLJpE7WjBUNSxIFDoOMYDbAPS0v6rbkRcchodpDm
	3Sp6Lg==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk7g7jw1w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:25:09 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5eaad898904so79070e0c.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793201109; x=1793805909; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WYDXrDV3B7esNKlNVgZYwMfud2hi1hHvN019zxOjdZ8=;
        b=FN3EmDvl+yzv92rqz/k9Q0UaTEzZim7rsjv0+NUZuTX3gGziw85hlU7nL8OmmevcIa
         ZKsf6L6KkMy6j7NwELmX0OdumH405EPNoffFam66TYDVbeodxs/G1SQjOk+co7O1fq95
         qbHfJ0xajnLhEnUDqgtoSx+3x12SrPe5vsIU2aIHpK8qdFycdpyzh9YGGhpeyksr7AdB
         mmWjO5Cgk5zAPlAQM4IJol91Eb+Qp32T9LhN+JHGuOV2Hcqfd4Cox2wxYLE9iM00zS4c
         WJK9MIDvXQyDQA20XfbARqfx27dALg7y8nqiYDlYhRpWjMDVXYnXM/86v+g9GPDcoTWS
         jvYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793201109; x=1793805909;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WYDXrDV3B7esNKlNVgZYwMfud2hi1hHvN019zxOjdZ8=;
        b=pWLMbbAghLHp9+QyfPBDQ888cP5b2oJ5r7I4NKLNDjiexQCKM8ZKyJJT9wiI888ZXV
         kqbxNnUjPYiF72CQDBxpSadqKA15ATkHJFEreSyqqzfFdoIX/nJl0QARrTUK0ND1C2zR
         tw6+hNY8VlEsBeljhZ17YoB2t8VMn7oZCeMsBMXNwIgkIljxFBksUf71onoGhUNF57UV
         58JBRnwKFIl/+k7PyzHLG6tCnriX9QCl0Va8rhMZZ6SPgARUgaACGED3Z5R4c06vIO7f
         Suzrhz6vPq51SjC8T3O2PCyiMITayA3hchzQBJEQoTNoOI3GVAFXDJB7ou2+4f+A8MH+
         snLA==
X-Forwarded-Encrypted: i=1; AKwUvBz9lWSv8n8evExY//T9OgerkaOtQaw4at1908DLKwNgIAeTh/TQVSpBJhC1Nb2ZZ0H5MUviOAQ8n2E=@lists.infradead.org
X-Gm-Message-State: AFq9FYKz7MvrxdvMH4ameW/35CookCBRPWwYO573DN0+Kb34Kr61ZNmr
	sFryiboHwuQFDxRQK0mIKszdbZN7N59x0gAbhAAp6HgVfJrsZP50U/n+fz7Aw3Fn/9ALQS+Kdz6
	MvQRJV50PYpXMyLnkC5tR6agkVzjRctDxwOReyri3EXFH1oq1Rv6WDe5rOVWlnfbS2yNr
X-Gm-Gg: AYBFou0i7TnTgObbBG+mO4oqTHuTjhaFwhbo2+eNyNGsNGZlgJd2w7ZsnEwQ6HxnEE/
	aqWlbg/VYOwERswUMo+59mX1parS5r0QIdhax/B5b89f4fRQ9/8l47vdqgpx0ShpIlIKqvK4mKc
	2YEy79rEDjWTISe9ktwLWkzbLA/vkf3HTYa/zrNeVyQv3Z/LGGKAJN8OWMTsDuzAcxOj7JUGfSc
	6K5XCrswYFZJLwcuoO4eYrzjRdE86v+KMVD8ijewOvs/YW4OeI0VCvB3HJhLmWS9lyzZxIXx3KU
	C0u8lXff0jWjqFilTcVj7OXv1Ak0BYi/0g53DHLOKNhPybH7m8omuqDeFHeuzwdGJr0e2S1PhdA
	lccoqu4VH390GeZ/nUSVHNdGi/nJdgaFFPHhUZ9ykwR14NEIXCLiy25394T+jQZYxq9PYw2M=
X-Received: by 2002:a05:6123:5c4:10b0:5ea:e196:2742 with SMTP id 71dfb90a1353d-5ec4cc86667mr1380780e0c.4.1793201108719;
        Wed, 28 Oct 2026 08:25:08 -0700 (PDT)
X-Received: by 2002:a05:6123:5c4:10b0:5ea:e196:2742 with SMTP id 71dfb90a1353d-5ec4cc86667mr1380726e0c.4.1793201108264;
        Wed, 28 Oct 2026 08:25:08 -0700 (PDT)
Received: from [192.168.226.26] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c4992141068sm401541766b.60.2026.10.28.08.25.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2026 08:25:07 -0700 (PDT)
Message-ID: <2feeee07-b691-4c06-94a4-f9b6d9fccc2f@oss.qualcomm.com>
Date: Wed, 28 Oct 2026 16:25:04 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: phy: qcom: qmp-combo: Glymur USB Gen2 fails on one port (chip rev
 2.0)
To: Burke Cates <burke.cates@gmail.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <5b31ea48-7918-4f0b-b012-6915b384b922@gmail.com>
 <76e97352-3a54-40de-8ef0-eef0ca27ca73@oss.qualcomm.com>
 <830ef909-d0d9-4f4f-8b73-0fc0cb7b46eb@gmail.com>
 <80fad9c9-4a90-447e-96cb-b1fb0ed98a36@oss.qualcomm.com>
 <a59c982d-67f2-4e86-a110-ac7c1e0f1a6f@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a59c982d-67f2-4e86-a110-ac7c1e0f1a6f@gmail.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX7qOr0tFtdIcY
 x6EC7YEn4ZHoYW+7XnXb5W/jskQR5rvLNt+kpQJ6C3oSwr0Zb1nYRTMWrOh8T17ty6I4N5AtbOM
 KcuomRr80j9CiJI7577colmioww47NY=
X-Authority-Analysis: v=2.4 cv=SoIFe/O0 c=1 sm=1 tr=0 ts=6ae213d5 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=f9guqRr10KZ0PglIEQoA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-GUID: SlKrJp_psW5zgftTDGota2mRCnsnVj8a
X-Proofpoint-ORIG-GUID: SlKrJp_psW5zgftTDGota2mRCnsnVj8a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX3WSeCFdxnG+l
 CLQCbGrT6DsoVT4jgt6Luxw3JvGcTAjokVZz8Km6JYO/l9u/jwTgf41gyouOOCk7YvBmYWnrWyV
 hraV2/HADN3d7fvJs4y3BOZ3v1TTgbg2/ExSgHUD9fDMTaFdaJ0PRFs2dNnaRlmhNu0vERF3FTR
 afXM8elAkPu9imaZX7EaDw7gh4FntSVWaDlgJov+AgLurnkc2xV26Ld9TWrNw6JY7phVuHgipIC
 D6UkieS2dTOJaeGAUeR67p1pCu34km3xpaeo9AcnS5eifeSARmrBOXzIrRCVFZOSxQOjWRh3spM
 KmlXCVewQuGajdYmp1LOxXFNezPiK68tOQqhfx5yAOgGt7DJ0hbkJgcXm8i/5gLtLGQxsebOn2J
 ZF3jqLvn5awiGMgXrCDq5GWaRzQIGbXOItC0C3k8a5RoI01B/FxGjHRvkH8gFXFC2iK8oUrbkum
 1tSd21w/u/0RvyNP1AQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082510_781359_31BA7255 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/28/26 4:23 PM, Burke Cates wrote:
> On 28/10/2026 05:22, Konrad Dybcio wrote:
>> Is this something you've also seen with your local changes?
> 
> yes, but only one data point. I'll roll back to to that later and collect some more data. Anything you want to see?

No, I just wanted to confirm that the patch I suggested fixes
it "at least equally as good" as your local change, which I
assume is a "yes"

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
