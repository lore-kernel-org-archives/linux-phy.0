Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED3AD10D14AD
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 13:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0YDSlsd9yPKFJxwGEci8WwVJ0SRI8TpiN/yjyVlnVQI=; b=kGHx9iBO1JcfQ7
	Q6zS829n1L7wGgOUKAhTWJxQQkH9507AM90z+Hs6MgNxrtVocpJbPsDS/ruRzmJNxKaWEmh8oNNcq
	Em2+v6Gpicl35G5c4HEBuTfG6zE6WKTx72qZkR8HOcrILYSwamKU6ugUhYQr7ajdyBmJiS18fy0gJ
	vPySNNR2FuCD5xzXB4rIg/Zb9JMoAhuA0A7ujCixuNl8/DUBKXF18XEoQ+dviMhfXLN6HAAlqYhJl
	6i30vb2QPOqUlll70yYGwb48phxvuDi9OhsDBSLf9TVdkZzGhAyGVyggIXL2LvR5CFBzt49tiXT8f
	OkZOmQRBDPo7DPMGutcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7CIm-0000000BJci-1sch;
	Mon, 30 Mar 2026 13:05:08 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7CIj-0000000BJcD-3y0K
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 13:05:07 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62U7ipk13305051
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 13:05:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5F6OiFtnMdTgNDr3//AADnNY
	wPc7rvN5471UHjhkqdQ=; b=J3Cqh9+TdyFAp4SbyNvcYSdoW/mujim2V5h/0FzS
	IBTbhVKBILx/Qtk5Q3NCH0+giBjGZJIZ8GYOkt9habygnsyfHz9bJW+uXVzR/czA
	Z8Q63Pda7Mau9P0wcbkb2CQGjDVQVdyqcHtSRJsbv7oKfI9iHcY2qSKBTKj1usU2
	bm+mO+59JhrcJZu6nOEu9qSAVDxNfnSs3m1/3OvtBKVGXUfvK3Cyx/x0jvHK3p6y
	mfdmOFfwi9MyDn4bQxBtjo1jEFbjP5HsXyPSLxFNrYqnvR/4YDh7Gwx08ASc/lUD
	wu/wNkEI60cBvx0eDuzNSQngeK/FwVwBDniRWlQSPA9g/Q==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d6ufmmdfn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 13:05:05 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-953a7e2c35fso363850241.3
        for <linux-phy@lists.infradead.org>; Mon, 30 Mar 2026 06:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774875904; x=1775480704; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5F6OiFtnMdTgNDr3//AADnNYwPc7rvN5471UHjhkqdQ=;
        b=CRXEI6GTLuAhh+7pGkugSYGtTTJBMk5FAKEW4D8iFHNYzIwf3kuJqTWrJj/hztAWCT
         7aUvmqay+XhqjogXEC9K/+3rwVAgDmdz2y6UElB5xdBJOoSIXj0ue1X2QKCM8Dj/XsJt
         LxMefCvXP+nsd71jjsdJRrtqFSt3cWj7X8wKNp0oKB4YD+dxoVvrfaX9msSPI7YNnMiV
         KsNIVnVP2MLNMBydPMobR5eE9bzB0Ktog4+hTyGT689PIHLwmonzLxdcRMmrZRNNYv1V
         29GSU4TAoRrTzaRFPtDwmLqKkdP7DL+RQqhKO4ETJ2fc05kIGetL4o3xqWetNA59IKu3
         0b3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774875904; x=1775480704;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5F6OiFtnMdTgNDr3//AADnNYwPc7rvN5471UHjhkqdQ=;
        b=V8GHPWYNhRw6mhlUquAsctPnVUR7jk9lvwylQwfCIBsci+L4TVxmOCKcV6af2GkBnI
         Oe5hUZOEzsiPWjiuk4Q17TyAYl3cMn0Q07m35jCOM3RteEun67k/6yI7ni1RrrdnoqgT
         HlRejvejRfijBRDs4H6zPnV96Rs+fOtwfMdc5cFYszcY7/3nXCbcxEHu1qwmTNyGbYAj
         rkfMIxo76gtLj4FNaLUYjCEe+0vSVEIu9Rp4zndFgocAfb46LQbnfdO/JCm92dg8Ylse
         5YA1p3zACbGsaAHvOgVumio9EOoHaE2nZ0zw6cCB5jh7AYSC2K6B12FD380nKmW9Vo/s
         POgg==
X-Forwarded-Encrypted: i=1; AJvYcCVFeWo3ooFNTSBxaKnpg5ub1JX51YHo+KhjN+g2Is37CYExnADFh8saXF/sq0tFhTyGX7ldyNqdvFY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6Qb/SqOBu/GM/ld8P2JTjyhjooBixJraRcQ2r7seVZLqSinqc
	CRjEb1SSPgU1xK6enA4yuvbBfC73clBz36q5bGPlmhRKVFS6DyAHJvNp6qNvuik12XwVYzwKN0k
	eB1u2vV/bgfMn2CIsklmT75H0K53Bg0mtDOlucnLsgHAvYsysRb+3bYx5H/ORzDHAKDdK
X-Gm-Gg: ATEYQzz4MGFmvv+HZzeGJacMva3NpQAvzVSKtiJVfLjDCWDXvt8meIHqvm6j4NW7ygo
	/QxO1t64yQJKel57kCBw+WjXAuKWg03Zojt122Eh72dMadZOJhDumph/DhKBEahNg1XVsUpThQX
	JQEoyBoDG7mU+tSuXzDIqme2d3TFlkCfH5hrm3A+ksmDZrC+X8oedW/lt7OK67GXNlFjXFr3nlc
	MbqArnxA36XTOaF+exS17HPVsnooG5LZMQj7ZJueGCTCZvI5YDDiVkhq7aTtTGgD6xFD9siMazp
	3emTrMqmHsQuxivubMa3XBtphxG/UWhZuitBCbWhruAnURYunLDKqwDiCSlteAAc1K83/PBsquc
	rrcO5z3xRXSWnfnp7XK0E/svCuvWkkkzIvAg1
X-Received: by 2002:a05:6122:3c44:b0:56b:9784:8a2a with SMTP id 71dfb90a1353d-56d4a6061e5mr4559079e0c.10.1774875904188;
        Mon, 30 Mar 2026 06:05:04 -0700 (PDT)
X-Received: by 2002:a05:6122:3c44:b0:56b:9784:8a2a with SMTP id 71dfb90a1353d-56d4a6061e5mr4558945e0c.10.1774875902866;
        Mon, 30 Mar 2026 06:05:02 -0700 (PDT)
Received: from oss.qualcomm.com ([84.232.191.214])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf21e2a7asm20881322f8f.7.2026.03.30.06.05.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 06:05:01 -0700 (PDT)
Date: Mon, 30 Mar 2026 16:05:00 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add
 Eliza QMP PHY
Message-ID: <2bfl4imfis2ts46fskz5ykoxyxcekz7ieesfqedwvy6tskownv@vuwj2mjswtaa>
References: <20260330-eliza-phy-usb-dp-combo-v1-1-2ec11e793a08@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260330-eliza-phy-usb-dp-combo-v1-1-2ec11e793a08@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzMwMDEwMSBTYWx0ZWRfXx2bWU8/20xdT
 X308mps4N2WfTHw78yvw3uYv30LBYO1OILaU+KT8gFlwgWezAU697Me55kYjUw3C4BkihODiN1D
 z4H1cco5iL638YlDCuf1tJySfqhnHO3OKSjJIx4sICiMoeGu0VNyMjTPFsbci0xvqNAU+UE5CR+
 Xt2dpY8mnYLqOaA7RON4qPWan4Efq9vIi7VjvXLf0dfNZIDeSNVSMyu59kdounOpsl0wsOpJ/Y4
 1XcxcCEqrIeFuLP3IKPoK2c2jhZuSM0Z8vKazZgLFCELfr28DiOnuopouaFdYkWRg3TWseKh2ax
 1VJnBOfjl9+CxKUp421DfgiGhh/5QC5TABtQESZRwtcBI7Jz5Xj9cvQOtu5oqyilmY4T7BYWQ45
 OSdosJ/5r2Apb1LDLauK8sl4hMXicXTN0em1VSPtCtKbqP973YonuKoSs8DEtWHNr6XdslF9jJU
 y09k1dnArIIt9nZc/ng==
X-Authority-Analysis: v=2.4 cv=aOT9aL9m c=1 sm=1 tr=0 ts=69ca7501 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=1UCgTMz9MQc3icybWezSFQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=K7JcDRgPh8oaRkcjYf4A:9 a=CjuIK1q_8ugA:10
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-ORIG-GUID: S2dJuKYQWiLbtKWq5a9FM9fF9sNKduqK
X-Proofpoint-GUID: S2dJuKYQWiLbtKWq5a9FM9fF9sNKduqK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-29_05,2026-03-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 adultscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603300101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_060505_989566_C226404A 
X-CRM114-Status: GOOD (  10.86  )
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

On 26-03-30 15:19:12, Abel Vesa wrote:
> The QMP combo PHY found on Eliza SoC is fully compatible with the one
> found on SM8650.
> 
> So document its compatible string and use the SM8650 as fallback.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

Please ignore this one.

It has been sent already here:

https://lore.kernel.org/all/20260330-eliza-phy-usb-dp-combo-v1-1-2ec11e793a08@oss.qualcomm.com/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
