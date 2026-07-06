Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89EE7C43602
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jul 2026 15:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=thJSCxRMOAeWpxgsCc+1W4vWpspiKD2P3vNipOJ66rE=; b=ZNVleuakXQyvNZ
	wc2htVe1nTP3cnBybYct5rekN8Wl6uQNLs00zIxbgHKCUmdfrjvEfzFcuxBEEbXr5ByYCySyCOC28
	9rCrXwUyp70MgA5Q47xth6PyxmxNbWm+fJq4IJvXIbJS1LJMF5wvTTpjmPDNWyeL1CNW8iQfOjDWb
	TUhXSI6TlYPF65hEXCD4PFbJ3sHxv/jtGPTpWZ79ln7NEYvs4yqXYpTqnqRDZ0gGN9ytuQH9jaqyH
	gpO/55ISnmwnIfPea/r5/7NO2rOPRKd2CodWxEYU3cGA6uDpkOnUqXXB1f4a0VEcPdzCp2Kf7mAXT
	2YXUFRnd4touCEWEfeKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wglOD-0000000CucS-0exv;
	Mon, 06 Jul 2026 15:37:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wglOB-0000000Cubf-1lqD
	for linux-phy@lists.infradead.org;
	Mon, 06 Jul 2026 15:37:44 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666FFCAs990326
	for <linux-phy@lists.infradead.org>; Mon, 6 Jul 2026 15:37:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1hUvU7+YPjYZoemxWGudb5HAwYsBJ2lip94he8TAung=; b=O62LOiTIr+OGbYsa
	2foSvydPvNkHVmJAENUjbCvuLzrUhR87vjk2oDpW4PEYBQf/KtjJgOJt7ak0Go9W
	xzoAAu7+KaJgvYQ6TXnLdeC10aDkmcJzLNxolwNfueGhbm//zDOOiweTTPwz99yw
	iXHcAT5At5jCQMFwdAKC6prWW3vEXA70Sk0cuRpV29yFWOBF2AIiJG9wwQS5pr6O
	wwyAHNkZTHei7IYUMR4VTvtxsGaEEunvyasH/fkR5D8HTD5gSiFkFjCLP1ho4RLi
	uRzIS92Sq4SB09zp9mAeAkOOaGdBBPpFRelJTdF0X034L0eh9iW+GbdzkTKPF01Z
	4oDUqA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8a3gshev-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 15:37:42 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c15c77619so7357651cf.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 08:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783352262; x=1783957062; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1hUvU7+YPjYZoemxWGudb5HAwYsBJ2lip94he8TAung=;
        b=f45udZ158snxXewtN1CdigHvXlCCsSGlWVHu6i/DaKPLKZac0eSSyiM4X75BAWQq8u
         3RMMBZhAxuPIzspmm4eLvcwWO1hd/Z4jW+CcvgcSdQRPm560VDcxcnMaUufKRhOIeEKv
         h3EwseuUwix2Jl6FciB6qv8zFUgz1/2PRGKM6lXmzsVcCK3xj+2LVTjXi10UXqxEUgru
         aHFTZOvE3nlZ3DVuzUp9fF5vE5vQLwGg0Ke9tTaM1LDxFh6AxhBL4eCdZgnxFizzAddl
         fa4G8ZVoA9C/XmYQ5zvrpeIPP9euCbCe8kVbKJf929GFzkqVbB7mBhhaO3IHbEnUtKqc
         pDYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783352262; x=1783957062;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1hUvU7+YPjYZoemxWGudb5HAwYsBJ2lip94he8TAung=;
        b=Wtcai14TpNrYd/qqTpSQnRkNIYEszPFr9Z1G9AXiyQuu/fRMRzYnEaLw+EeJrkaMij
         OY+tJXYobrez5b/6QLK5IjcwsyyUIZrTmfO38SFNGivxWYaFLyTPyaCVSfd2n5oYp/wv
         a8s4dXIwjHAItDcLcnjkS9vwir1+I6MFMPt6kxjsmXrOuF5KBOf/6FC5YFbQkUQ2FUl1
         wsdDXLuAsMApk6BTzLUP7EiyFD88KLLtXaoDNbRBT1uvVBu1FnMuZd13JIbBTbZhO7N5
         +SwswYEMeHEX7nYjXUpZNCAge1QxE9QLYnqJj3fYvdUFjcOdxePz4JSKLJx8JTZNvYL4
         crdg==
X-Forwarded-Encrypted: i=1; AHgh+RoXtfY9tXzjDf3PhCBGYsVaBsbkrDqPDek/J6FFtyaUgGaakJNBGdP26mRBXz8ySUKpNKMcqCiXcOU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqfghojMItVW7UWe3nuQs5gCzxrZGAf43NuY/yEUWkc/6cGO3M
	V7mLZLfz2AU6KIRCRduHljwRLNQRRHNFOTVCiNUf2C/XvxhuZR/9W5d6XQZ5GJF+ozVowjZUz+n
	QJvVdJwp3XgT+dcfaYnIWzF79c+/EYGF/dW3Oc0ECcNWVA1SuMmQP/VdMZxEaFOWOMy2g
X-Gm-Gg: AfdE7cmrzCgbQyiUwA8WGzmFavHTJjHjLJEPSxOIvHQKZFPWqT6HNS2z4JAeNr5tle6
	f4dW9Bnp6eFxnjKDHGVNxHOHH/RyQLm082O8Q8lGKiF/aJ3jfLqHXbZyUfhbPG6xnxeJPdoyAdM
	pWETq3LaxCZLTBEtlt9+obkFMPDww7sB/MPXv6mi6c353YE1FuDKNer1zIQWYOMLlI1+LVDQaXc
	l2+m1uTO9bIiAFwW0+Xc8zhG0cIY1KiinAfQbGRuOIL2ONH6V2HN0ek9PDySg4T0k0qdBue6S6D
	li2Wk3Z7Xq0eSy9fzRERdsCDhj0eopq0tzA3evi8ArrdwnwhW34AMn05mB4F7ue1v87nQC+UrlB
	qsULNq4Ye2wZwU8qU4Oc09yNh2vO8w+81gYE=
X-Received: by 2002:a05:622a:144e:b0:51c:215:3e81 with SMTP id d75a77b69052e-51c4bddbc26mr100069631cf.4.1783352261785;
        Mon, 06 Jul 2026 08:37:41 -0700 (PDT)
X-Received: by 2002:a05:622a:144e:b0:51c:215:3e81 with SMTP id d75a77b69052e-51c4bddbc26mr100068971cf.4.1783352261047;
        Mon, 06 Jul 2026 08:37:41 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69a19cd8904sm4294955a12.2.2026.07.06.08.37.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 08:37:40 -0700 (PDT)
Message-ID: <decdd6fe-7460-42fe-9e53-0352f291d538@oss.qualcomm.com>
Date: Mon, 6 Jul 2026 17:37:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] phy: qcom-qusb2: enable autoresume on Talos
 platforms
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kathiravan T <quic_kathirav@quicinc.com>,
        Baruch Siach <baruch@tkos.co.il>, Dmitry Baryshkov <lumag@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Manu Gautam <mgautam@codeaurora.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com>
 <20260706-fix-qusb2-v2-1-8d9cd73b1db7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260706-fix-qusb2-v2-1-8d9cd73b1db7@oss.qualcomm.com>
X-Proofpoint-GUID: GwI07wtpNO35UzOplnXZ0Ha8dlSWQWmA
X-Proofpoint-ORIG-GUID: GwI07wtpNO35UzOplnXZ0Ha8dlSWQWmA
X-Authority-Analysis: v=2.4 cv=CPYamxrD c=1 sm=1 tr=0 ts=6a4bcbc6 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=w1RBZjOZuwMwct0x8h4A:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE1NyBTYWx0ZWRfX4unHL71UBiPR
 0ICfZ1LqSVhQD7zjCIEPK2wgQBuK/82B5FIkE/AdQUTyv7EW/kgtNxCN/2pYQz95xK3/GaXfuLQ
 V6v0s33Yy1ym/ijNkIB1imKHWQyLmJfVf8ZHEAUvckCP7X0PaANmF6A8EpNcoQdGd0VK65AYOYH
 cFhew19xnnikgmwhInBAeMIwCakeiyOcJfJ0FPXzFm8LIWieVP/eYb0caaY72PuoSSYmO7q5WuT
 xEVClAbpavkvyT9sAT/CCfJVQ6/NXaaxc2PeMZtdi9S/nHa4XAghR93IQkJo3U4l+hMIGJhRvNy
 i0bibyvYg+6doegJw6hS20LHOM9gyDd2GuOwvrEA8/wyY561cv0p6K+2jB5tuO8RDPBf0u9wjTP
 npNUssZayZ/rJxvbK/F7RyPlE71MR+JbyD7q0phtrWyTVo8RCkzNACLcYnpifweZoxFA6TEFdgb
 3KoQgFifeX4aEU/ShfQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE1NyBTYWx0ZWRfX2XphPqc4Mzxa
 UrVXCWzSQzRacTEod1+wBoERJPE9KCc9op66yMdAzqCKCn1fsTi6J/FHUcX5Zr6zgC0ANYSeofJ
 8NGKm/c0zni1TP9ivoJMgsaHEsLHNrc=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_02,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 malwarescore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_083743_483125_FD7AF29D 
X-CRM114-Status: GOOD (  10.04  )
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

On 7/6/26 3:53 PM, Dmitry Baryshkov wrote:
> According to Krishna, having autoresume disabled on Talos is a c&p
> error and it should be enabled.
> 
> Suggested-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> Fixes: 8adbf20e0502 ("phy: qcom-qusb2: Add support for QCS615")
> Cc: stable@vger.kernel.org
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
