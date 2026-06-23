Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EA50CDB470
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 17:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQWCQ8eJqMi09Vz7q82tE6gDXUHBdkLvaIbyq14s1yg=; b=gNccPpwW6Jfqig
	ts5HI1GRGSwmWanhqOCDGDiU+OLdjBbUHucMJGzhvvuuGi66aU1upJw3LRCVgx9e5BxEkHMZXG0rD
	VyChoHNj91hUK38vEGEcNJ0m3pP0svqv50m56BFY1aAh2qEXGyWLePr1HUq+DJKXIvikZJveZZP6C
	pnekn+F8gbvFZhVpsqZqaqg1yrheq7U8xFK0rQEfboUtCmBpctmCR/uUSx0HFyzAfPNLGZhRQDiim
	GkUoljYzUYVgJnhRt+qRspCuYSPIHFeBMP9kEufjFrCn2wx7aw1nB1siwABdJuTTL/G0utZqsoCzr
	y8NcgdFKIPM2sufO8gWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc5OR-00000006jgk-0rEA;
	Tue, 23 Jun 2026 17:58:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wc5OO-00000006jg9-1sae
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 17:58:37 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65NHqxqw134236
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 17:58:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lidbR1OsPBa1dvYdzrXIvNxl
	oOyNJfjxIFISM5r5VJo=; b=Z+pm5g1SdtWM+L/1Db+V5VCgFLpgAlBUuhe7jXdo
	91TS+2kqc6CbDdIE2HTgkiPtMMiM1tpY3vg9wS8nM6Ffi+6m53Zv4bc+JM250qHK
	cNubRC3RbTfyOx4Q+JQNXhSiVqb1oUeyUXCc+5z9GqXz6kdyMQKbFOuS0jUr3+zw
	NEjxOGPGrPCCuv08vixJ4vcTeESswvy0T0nycMGn2eVtlWUxcSTeuQGKdt/SRzbk
	oMXKkR9WccAFugcHcXQ3T2Q0qAm+rXq3TA2EYP2Yf1KJK0FWG4Ujnck9n+fOwUVO
	eYVVOeuHWw7RmDHgnCVUxhxQ8upB9GT5/hSusgVlt7/MHA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eyr3221xx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 17:58:34 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-9157f453a27so7111185a.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 10:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782237514; x=1782842314; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lidbR1OsPBa1dvYdzrXIvNxloOyNJfjxIFISM5r5VJo=;
        b=J+NYUFCBsehmbzUMds/n/hUmKwHAnzAuQJ501HfelcZ4YKN9HFIRU4KO1LBvdKwCK2
         M1QVOJod6doopNdFNeOXr2TXMbStqx2AW7kZVdsQCas1wAGV2PpMnoRZqSow93IR1mpL
         Xs4pYUIaRVtqeXLyhhX/JC/uwj5Khe2C3Sq+qZhBNKNdfnmVLvxJjVVC53/r2URAK2+K
         Ak0VZpEZhRbR5JO3qs2hy8HZwDP+CF7fhf+eZxSuARXYFoDCEjXSDqeIEZM+x6NNcCQf
         Y2YvPj2FbXSyxk4vmQ1lZyS+L2A5cgF2wuSS9Yjg0mjy5bZQb+amEIZa4tNX/Z/wLHOq
         S4iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782237514; x=1782842314;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lidbR1OsPBa1dvYdzrXIvNxloOyNJfjxIFISM5r5VJo=;
        b=WJURl5912Mq9yN45bSi7RJtWZleordKkdhOsbJEe0Ps9+WGrEiKPUjuyOM319cdIDy
         iiW82gN1mSKNwLuzlkEOziq2rjoxhvHcTkorb1gCNNhsRi4DKAbi8FM1I/phNbDtziiJ
         L1DYPvw9TkTbRONKeipKbX5Wcgw6/xWjY3O+B3k9hJbU054L9aV3LZq2E7TUGuqbS/8T
         sa6wzblDnbXCo1l3r76cXhnzWl1Bk9kJak6ecCzQZkqJeooPEozJvvwKLUPI/djmu+Dx
         lcbySMb+vB8FckkbDqzM0KjC91uyZdFGzlk5vkzIg7bb78hDGNBpjLPiWMbvEHR7Ik4U
         1gyQ==
X-Forwarded-Encrypted: i=1; AFNElJ/uwK9rIgFgSbr+J+dkiErEdG5auBnVZhZ+CREEKUmvhX87jFMBdSQAMuT4qvRD+OXaG7AJgE4r4xs=@lists.infradead.org
X-Gm-Message-State: AOJu0YykqK/8+ZfcXJAHPv/JHwRBZVB64YsA9SwZ8uFqKM8lOrwFzfm2
	xqULomhWGSsHzXzjjt1M909dpDZfVE8CWFCubNQFTP+hPICoxwgWh1eiEgxQqM9ahdnzb6sEPOq
	2x0wnYT23GGjr6liz4ShIZV8Ju3MuLaNLVUzu/UhrUDwBgqDqKUfqqpV1nyPU7hmhoHfZ
X-Gm-Gg: AfdE7cm7NqMsdLLa+3baX+NKGoJfc/VgsI3kWiElXkUqxTkVzRda7WgpvjSpm73nTvX
	CuFLnXU3hwncvDokZmIRaomIL9+odAG+EIYsVDOIM4C5tg6lD1uLN3tqtEKEYUpCDWYZrgLlKbd
	KHVdnBhwN3jXs7WOgfq0VB/CjSGQVII/DVAY8eed/A8/vkejxC4XJacFNf2O02k8bUUB4tNYZ6a
	1fuRfQSBUXtYvcwhKmY/M8CmRyxekhyqIxbhnSkPuy3pCC2AG0iWUULZQVK4UpFERE5t5N7NLdT
	8BdWeTUyp9Ab4mltpP1cJxQTRHGfJeh4dyEhP4QwUhQvQgQ54v+5ZEf7La/0e4f+SqxIzt9D8Tn
	FNNaMEeFse5YR1Ka+bVStYKyMoOr3Fc3BzfYhIygE+SdIn4qE/hiiP5FlH53sypiJKQuOaI0S1N
	bwTGe9W+Ejcx0jAV5xYXW6rZWN
X-Received: by 2002:a05:620a:458c:b0:921:a4ed:2d06 with SMTP id af79cd13be357-926453c4a47mr635251085a.4.1782237513845;
        Tue, 23 Jun 2026 10:58:33 -0700 (PDT)
X-Received: by 2002:a05:620a:458c:b0:921:a4ed:2d06 with SMTP id af79cd13be357-926453c4a47mr635245285a.4.1782237513359;
        Tue, 23 Jun 2026 10:58:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3999b156976sm28071411fa.22.2026.06.23.10.58.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 10:58:31 -0700 (PDT)
Date: Tue, 23 Jun 2026 20:58:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com,
        Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
        Mika Westerberg <westeri@kernel.org>, Sven Peter <sven@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: hamoa: Extend QMPPHY description
 for USB4
Message-ID: <kdcsigkak4ct46cbx2uy7vlhuipq2qyewazf5rtafwec3naqs6@rphkuu32v3m5>
References: <20260518-topic-usb4phy-v1-0-71d827c49dca@oss.qualcomm.com>
 <20260518-topic-usb4phy-v1-5-71d827c49dca@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260518-topic-usb4phy-v1-5-71d827c49dca@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=HrxG3UTS c=1 sm=1 tr=0 ts=6a3ac94a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=qXetow4D2dObSurrW18A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjIzMDE0OCBTYWx0ZWRfX6X07M3WyA7d4
 zyXU0uzcvg9LrCnzTKr2gP7CWQsJmnBi15NkvfvvFHSdZ2aaEDcQJ+/QlQM5IMQEEYG/32mghev
 ZZVEMJNI9zioduFWaDU8Xl/6mPRQwOIX6Wyev7HEvvfEYBXzldtLTz//xbQJE2Tev+groHeOIwi
 Eg9YTBWEWYhDSpQhEQ1eB9a3f2Lzs8B8JbrUovxGAmj/3rwykxId93u1Kvhr24c2gmScR/7VhTC
 yczntU5N4PuhFu7P9JAMqG5X6huL8lqQawsXEvOOkU3vNkrg25qvJdv58aksybuH6ajNqnDFFvX
 zMG8jLCjYDcPO0vcr9DbwmXpZoaDxcxY8UZeUFiVar+92tgysEkdc6zRTc4sCh5wOzyaf3Q0HMY
 0J8ItiF9bOjg+EAt/TrmoJu2JhWG7w==
X-Proofpoint-GUID: oVZzJGK2w4WguO0r84LzXOh5JaoeTCSI
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjIzMDE0OCBTYWx0ZWRfX3+NvPJO5yRS9
 9jXaKg5ViViLu5akiX7xBS9REqaKPst/qNwsbZOXOPU6rnFRwYxPsjAUJTdjqqWS/O5eWzEicuX
 5HqEt6anQw6pRHUywXZmHHFNnQxOy44=
X-Proofpoint-ORIG-GUID: oVZzJGK2w4WguO0r84LzXOh5JaoeTCSI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-23_03,2026-06-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 malwarescore=0 adultscore=0
 bulkscore=0 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc=
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.22.0-2606150000 definitions=main-2606230148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_105836_600989_A67857E0 
X-CRM114-Status: GOOD (  13.63  )
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

On Mon, May 18, 2026 at 12:29:52PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The USB4 part of the QMPPHY requires that one more GCC clock (P2RR2P -
> PHY-to-Router, Router-to-PHY) is enabled for the PHY to initialize
> successfully. Describe that.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
