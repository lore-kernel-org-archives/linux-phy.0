Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1D2FC53219
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 11:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b47/9aC7VWkKGu/BB0c98gYxIQYqROJaFi3heMrz/Zo=; b=HlB1VQwjgpIT0u
	m0B9gDATWux+uOGxOKs9DDNZEuVX+i1hA1G08GON8XjqX499Kgsp5pJ95QSE0NtXrlsyUeyVPSSsK
	AE0+FW/ZCq9cE64nyIi8/85O+AcZjKNtYENF1i8Yb/m4csrgmTRkne3uy+I0JKC/Rd27Ei0189S5O
	RbfcKxPLZNGvuMx6MK0YaFc2utKhQcRlVnGGx4H7qt34Ps7V4ZwSLkhldKKx5hF3uY1zPW3DWDjEN
	lggqOGIhZyaNMrcQ1YfbdCsjEPesuQNjXuK9eZdgZ5x+tootJVw/qw7Tc/2koHsPvcEnbn1UqPT/g
	0F1eVUI9aB6P0lMHIQoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wogPM-000000059O8-125u;
	Tue, 28 Jul 2026 11:55:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wogPK-000000059No-0OLo
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 11:55:39 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66SBsjLD2673699
	for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 11:55:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DOU1u1YKtdyAp/LhMxU4Kqj9
	bya+6a0KlguSVpNf2bw=; b=hPAc/YAE0gCGnRYTh4hat4vE5guCIemtdbcyHajc
	JtKx4zBn2pANLj/DAIyYGMAAwvdrn4CnQHdZkm13QKkFdpdmolTrQ7DqFig1ZJWo
	qaAmUUOuvdl/Pag3kLEHNFTb4PPLtnl+3kioisMmcElwdG9X8KoOnnJ7RwpIJLiF
	o0k5GUGFbH1/3sG4950K6ddemcpzAk/J2Jja6x9pDq8AuIpyrWJ8J3tbEfZ3DhcM
	FiA3vZUz5Ukau0POSzM6FCJRii/5UssCpyBDI5ih9AfbrRE00vAifpD/w78DGcoZ
	Q8Su1ZpwKsQSjJvHM1006b1u7fcqhxNWxjWEwYRDDol63Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fpuyg8052-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 11:55:37 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c20762d21so41563511cf.0
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 04:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785239736; x=1785844536; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=DOU1u1YKtdyAp/LhMxU4Kqj9bya+6a0KlguSVpNf2bw=;
        b=NaWTg1eIagNxFUmk6goIj3DuYZWusHFU/gS3MrldKAqKRhJXDRUYu1zuOB5cgpJZnO
         CU8Oa+iceqyPObSL9ERTpvqH+PTDuQ92OIQQLtfVrusLj0CYW7w+Nw23WwfJ+jzWlryl
         1ArzBD0o40J0jdFV7NoeSrOTEt7u1ZjOrdGIjD2ideQR8UYGzp1ii1RNo086phsW1l1I
         Ew6rORNsmEvzPuUqruehBFi03p4DSC9STJ/tSdzwazNRCz/4wk1o6O7mSpV6y5LcC7NZ
         pOnuq+5aIqOI/uIKecVwFJCIbjzUp4w57KV3xczBVS6+hKTQ2s4k/Pk0LsGTEMe1z+P4
         RElw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785239736; x=1785844536;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DOU1u1YKtdyAp/LhMxU4Kqj9bya+6a0KlguSVpNf2bw=;
        b=TdC9/ZPKYpmfb/GZ7nm6yeU3gPq8zAb3jaBe1Pg5rGzAXzPueOwZPkSTEpj+5itaES
         3bX0MPgcoFJ15uBEPxKJmRykwkrr6xcR8MNPbp6UhnJPKcdfhYWqUMynS2YF/TIqgH6g
         n1BdrsXndQrbBrsop3zp90J1gm8zAoNMott9jumvAw2qhZqO5Hoy8seRDW8VdZOrWHJX
         /bcH4U/CfyDw2T/8CUMin2OAxWRZDEfdG/CnYvtWggbbGgSVuA3j7x6AittFLqV8v1VC
         0UVTmvx8nki5eAfJrK2n2TNdO9mvLS5FBnzqJACCKpfRfdy30Ye3x67gHD09fPBqCHTb
         eSTw==
X-Forwarded-Encrypted: i=1; AHgh+RrPH/xo2jPeUDQwG5MnshOYixSZ4G2aIDZpdT9Slc1xYiOG1kRUq8YTwW3t90tFcmxbAGyZ8vtP6q8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7iPlcIBkwk6kpe3J3jYx9iK1+unNejx6Ol8toZKYXHP6bCjuP
	LcCczOhDEhDbn41WirExqxL6hZqrcx3PrYXrldPZMJ0SJKSDMmr2tlDc3kY97mLpwSuhHljK6vZ
	myIiZyDsxHqAAVmx3VcAi3gMbP4ArF4EJxoNzFW8EpHFK2nQbS66jOLoJfYkTFmovVK+vaCqX9b
	EB
X-Gm-Gg: AR+sD10PLjH29Z+U5TETEWxHe/Sf1FlFpzRQQOd1JD/Y5GNI8LUNyuJVruvQSCLXeuA
	5T+2K1dVXuxVH4y9peYExsVK25tv6/0Bs728sG+vZhRuInjymebMx/oIMq1IQzoK6AjbDHJibml
	gvzQ84Gp1Ju+8nr0NtirzjUMsVs+LtelOl/b3v6rZxOD8L4xT7Hc75NO4XyMZuev9BktNH62xNx
	Ku9x3YCsmcSpBBL76GjV/dnQGcnkoXfMi2QCPtpmxuHs+bMNAR0ogMYcvP9jVkXUoILnfwPxRiE
	wN2Ww3zbXc/3NsqqRGbYF6dZlZp0FtwfSbVu6xq6jlC05jF7jk+eT98bZNL3xxkbOlqy4ut5JcF
	laacj6SqVtp9Orwc=
X-Received: by 2002:ac8:5acd:0:b0:528:3c2c:5c72 with SMTP id d75a77b69052e-529d7115a62mr14953071cf.32.1785239736318;
        Tue, 28 Jul 2026 04:55:36 -0700 (PDT)
X-Received: by 2002:ac8:5acd:0:b0:528:3c2c:5c72 with SMTP id d75a77b69052e-529d7115a62mr14952771cf.32.1785239735738;
        Tue, 28 Jul 2026 04:55:35 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.163.114])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f85c63678sm54282332f8f.29.2026.07.28.04.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 04:55:34 -0700 (PDT)
Date: Tue, 28 Jul 2026 14:55:32 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH] phy: qcom-qmp: qserdes-com: drop duplicate v8 DP headers
Message-ID: <32ua5qkgtroo6vcxjgbr2ymmev5sese4cttf2fh5qvgzgtbnh2@6bxmeemceqyf>
References: <20260722-qmp-drop-duplicate-v8-v1-1-795eb7de0322@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260722-qmp-drop-duplicate-v8-v1-1-795eb7de0322@oss.qualcomm.com>
X-Proofpoint-GUID: zvujeg_Dr654IKeHTd1NnItn5J_bi-LW
X-Proofpoint-ORIG-GUID: zvujeg_Dr654IKeHTd1NnItn5J_bi-LW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI4MDEwNSBTYWx0ZWRfX3BIFh2OHZ/lj
 1r2qLwlRld+0W6/BMyXjjwxhg6+Oq7ra16oEtrzf3ld8RogXZAAJqFQ3AfhEZMkLHZ2J2kNs2xC
 63w33XH0u/YqtwKeWpUpTlU38RoDa35eWvdfeetfmcXVmlisa2RGNCChGyCgGcXyZxW8iJnECxD
 7S29p0z/G9t6F2bCqf78kpOULvbDIn+oCS5dO7XnUmQ95qOOde5GZwdONE1VRsusgDZ0cgTsZjs
 aopD/oeU6Lx1tlzH+oNw0E3cEu9ihk6nD8OXO6K8ci+gWKrTdIyc3MDknA6AhytwZrhwDjmWZ1G
 S1PbfV/KIFmja6NgYOq3R/o2uvG6XvC6ZTCD9c/jKqa7CKOgM3k9Etf5hzpnZPIqbvVCUgZqbYB
 e4jor2lrRES9yb4SWLbPuLJTtOpQvFCF2uxMtWz7p6OMevQt7AQcIInhP2PVNBJYTGcA/QxfF9f
 Xu1rD9cvvCCHkdMwOTQ==
X-Authority-Analysis: v=2.4 cv=aoWCzyZV c=1 sm=1 tr=0 ts=6a6898b9 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=6dw9+iwJWV8PcCi9M4lOBg==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=GhE7xFz0CRgom9ahFPkA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI4MDEwNSBTYWx0ZWRfX8CsxDLXwFlfH
 yqIFQOjCbild3zT3ebKWL4CEUdO6oWnbSDtO/H45HJmp/100XbPRtLkIhfaDWo9dqx8EY0sYhuE
 0hd0BBDoToKn5GpAWMeJjxHOlcT66CA=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-28_03,2026-07-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0 bulkscore=0
 adultscore=0 malwarescore=0 impostorscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607280105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_045538_269042_0EBDE49D 
X-CRM114-Status: UNSURE (   9.64  )
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

On 26-07-22 13:34:42, Dmitry Baryshkov wrote:
> Commit 212cdedcac11 ("phy: qcom-qmp: qserdes-com: Add v8
> DP-specific qserdes register offsets") and commit d10736db98d2 ("phy:
> qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
> added identical header files for DisplayPort-specific registers on V8
> PHYs, having different names. Get rid of one of the copies, reverting
> commit d10736db98d2 ("phy: qualcomm: qmp-combo: Add DP offsets and
> settings for Glymur platforms")
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
