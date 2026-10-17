Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE72CCF2C4
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 17:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjx8TBBMVIPxLk542XsfcLlURnhSlKbNNbTCPo5I4R0=; b=CoaG8aaQD0/Xl3
	oUoUy6TZ8BIks+5j9wDFJNxnFNiemh1YQDvT1j2vXPprovQvdxUB/FatcQOIHyRt0eZqYQls/aq6d
	j7w8rxlCy8ftWJn6IP7dvJ7+FhzQSHismlKColkWNpm4E6c6JEQJ4lggjK1moHxOKMTJmxQbMlcOW
	VosKhG4DSPnA1fib6Pw9JDKzRQh7dwPbp4D5mahgE8xpddHZQwab85g1aFNb5qMJHm6QpZV+A076N
	WGovmHeZe2Pmj9OJjiUhdyYoQdc6f3mPVCesMJTZE2gPb3O9qVvHedGAvG5Q/vBOZoR3NJQvmbTrt
	0v9F/RMwN7L8s834611w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI8Yc-0000000524H-1jDW;
	Sat, 17 Oct 2026 17:50:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI8Ya-0000000523X-2h8r
	for linux-phy@lists.infradead.org;
	Sat, 17 Oct 2026 17:50:57 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HG9l6N634834
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:50:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ACHN3RVNB/V2HynRAJQrVH6G6KIDRcWy3aGbMNcijHM=; b=BnBup60NVLrhzo4G
	X5EbGbPiVFHxVlcqfh0Y36TbGoQdG8k5DgKRSXO9vY2zzDuTbpwQUg4SXSsn+FFy
	c9l805J/WCwtL/EDDxXLJuFEPKd5HuYnHWK/13ESltSjTswrmS/gOcISCbxkO489
	z/OII2T6oft0Qjf7YqkyaDrfL7HukZhVu8pZu2X98wLAf/+fv/YNPU85TZPnBCT7
	ii43ThQ/JFQx5IPaimodpJ1etgjh9ZEB740kNA9oFoJptOUXhAmFsxpBDdx+ezl3
	/z8KuYjndVBIBe+IqlCvIGcCsuQ2BDPS+H67sI6ctaiiS4ZHg9ssezlB86cuaQBc
	yeAexA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc2a9hb01-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:50:56 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-30bcb065bfdso1635460eec.0
        for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 10:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792259455; x=1792864255; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ACHN3RVNB/V2HynRAJQrVH6G6KIDRcWy3aGbMNcijHM=;
        b=Wl/4VWpdPDhhYRoa21J+TaOVfbKWGbCm/56Cg5tiPKiQUD0lKT3lD7Iu2GOJRM/Yck
         mVLKGD95C6lI2fyb3onRPIBamLbwmaiCp8YoBv/P0ughbRBNpQW6fWgnSBg097pXqFBC
         efY23QE1W40/uIfP2j4Ax3s7Yt1KWerxYM5BQO7u8vyM0hM2oYPmXi3CzmZsH/MHcFkY
         hhuHhPBn51t2O7QnKABwgdbZDszqNmQwMyTnO86VOhEFApesaq97t9Sxem70nskVLAdU
         aFGNh9FMFSMxq9l58Hc6xAJYz/2vd0KTTjqVyrCxQ0ysZcPTIqOlVLLwmMoXKf31SSQa
         RLHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792259455; x=1792864255;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ACHN3RVNB/V2HynRAJQrVH6G6KIDRcWy3aGbMNcijHM=;
        b=rqojdyytF+zVKSzmwNQFPcZjdlgLkShuAn0ugi+Q8PXsyb1qFf22SFN3Th1R90Mbbg
         uSpBLc62NxxfKKEgmGhgkjXiryBN2bApylFCak+/4I6foDsF8e/7K7hTWM5+760CxuD/
         g+Abb4NQPn+4s53iO8ymsa0O5ICgnxYdrLjultY+J89aWFipJT8dVA4y/1qtDUCysliM
         /MHHD14s7V9olS+MI2ecxTn1CTaCqk4ZOj/7WcpGTeYGRQCWWkLiD8zH0KsfixHdFzH/
         RHufqsmZ1927qfM9Db7ZdpRDil5EX9b7S9StMwjFJV3G2Utn1acSVe5Fko18DXz/+F2e
         Tztw==
X-Forwarded-Encrypted: i=1; AKwUvBy0phgAhRBdQDEFIzP5IxSzjgPYoC6KCI1JuCbFqgnyIvDD11HquXEktjcCPvbr7VDz9h1/jdifyEY=@lists.infradead.org
X-Gm-Message-State: AFq9FYJd7rdlzi/OoqzF43hiG53CBbj8xLy4N4Ro3ZmuGG7S6YV3LNyt
	ZaS0yhzhH7p+T/mAvHaus/OajhpITOArVeKaAj+5MGU0URZgSrnl8kGkOqb1vf9VlESbVf52BJf
	mCfncuXsHio5ixSbiRqvG3km/kXXCQyhJc2NQsemnuJpS1CoV08Kv2rPEodLBT4urHp0B6h3KuJ
	yA
X-Gm-Gg: AYBFou14tlxtoaga42Nqy76eckyUI5HrRBRDtNiHr5CN85r/TmJ81Xr+ONf5Svwr/3U
	3Rzvp9N5yjxoODOKkRks2fd7/Jd/ClqLmItnMPpt8Xd27GbkPV0kx57N4djNz066m6GO6wdrxQx
	Mg20hhv67AnnSEjw6n+WWZWNN3eBmlH9361s7MkssADLFU8YS0wjHhBRdg7DzQ9mib4GkdOqQ/O
	CJ0C5jnbYqbHMkcO0LsLtFL6ff49dbwWXwfkn5PFAcDs4b1WMmpPzS+RgC3oW6IwuelvD/pbC4s
	W/Buasx0MZpY3b1dvhQt6yizDfmQTb60y9qUya7ofr74xNPGEdryk0bY1wtGor+42Ed7O3HEb/z
	/inTsmuL7KhZb9QI6R5m6HhjRmg==
X-Received: by 2002:a05:7301:6497:b0:353:5d9a:9971 with SMTP id 5a478bee46e88-361a136a528mr4797487eec.18.1792259455244;
        Sat, 17 Oct 2026 10:50:55 -0700 (PDT)
X-Received: by 2002:a05:7301:6497:b0:353:5d9a:9971 with SMTP id 5a478bee46e88-361a136a528mr4797459eec.18.1792259454684;
        Sat, 17 Oct 2026 10:50:54 -0700 (PDT)
Received: from [192.168.1.8] ([115.98.177.53])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36083283478sm16608752eec.29.2026.10.17.10.50.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Oct 2026 10:50:54 -0700 (PDT)
Message-ID: <70ddb147-cf99-44fa-b6b3-0f15e6b60473@oss.qualcomm.com>
Date: Sat, 17 Oct 2026 23:20:46 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/7] phy: qcom-mipi-csi2: Add D-PHY support for sa8775p,
 qcs8300 and sc7280
To: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>, bod@kernel.org,
        vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        mani@kernel.org
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
Content-Language: en-US
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
In-Reply-To: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA3MSBTYWx0ZWRfX64Sawxi7MN+2
 t21svb69cQw2pd+CoMewJh2cwoWSFD/lKNE/KAhbsjHkOw6YFNVM1Z0/m9IEESfikTkBE7l62QD
 fK4wDzhdJwny9vyxif9xa3jdY/HdPHE=
X-Proofpoint-GUID: 599nXG8Saud21yXO45UehTp5Jl4p6WuK
X-Proofpoint-ORIG-GUID: 599nXG8Saud21yXO45UehTp5Jl4p6WuK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA3MSBTYWx0ZWRfXxhZghpb+H8Av
 VLa3j7W5RKCvw8bk1+1oa2luOiRc8UTfwGQJUAXz3mFJ5nPzVO2Ks6VhSO47vHJKvpC/0dvRCT9
 woZh9WK2+SivWfiiZne3XzAYbUy0VepLcZPJMTR884uK6OlbfNOp6cdB0JK5lQHsRiLf1bHj2kD
 hkyt00WGqt8vr5OtHld++YNcfdLve98q1LVEVFxuohrqTKNg5q+NgRI/xkzc5BLQ0ohKOzvfJz1
 WNNjFHJOje4AHDkGoHr4CWf3o1yEvBaOQgVdgVJMD0tFyoMqGP0DYEJ4kXz0bUdK5ndwT3hgHZq
 7ZX44iEKlRCyJEZaAl6ZD8Uv20FPTCZuNI1SVy83QQVHQRsZdNmZrBf1D0P4NT8T9z6BnJWuqup
 HE3BEO7SorF4VViPvBZcvjUlh97Z250HHhihBBsQaf00JgGMhqHufrXBFXYaHPyJTlGVaC60/pR
 RgzVuz2e9IiCSJJQGUA==
X-Authority-Analysis: v=2.4 cv=PMeaavqC c=1 sm=1 tr=0 ts=6ad3b580 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=iaXPdgsK/hfklW56b25dCw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=G37XgvaxAN74JWTdFfQA:9 a=QEXdDO2ut3YA:10
 a=h3fZFQXOHLIA:10 a=scEy_gLbYbu1JhEsrz4S:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 suspectscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610170071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_105056_691673_F0E36D19 
X-CRM114-Status: UNSURE (   6.09  )
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



On 17-10-2026 05:24, Anusha Arun Nandi wrote:
> Depends-on: https://lore.kernel.org/all/20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org/
This series already merged to linux-next.

Please rebase your series.
-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
