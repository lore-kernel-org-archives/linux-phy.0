Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31DFFC61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 15:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FudpJUhIZ2aLi918WPBjYsYD4T3+GpJ7FYwaUczIC5w=; b=RV7Lep0wwls0bs
	a8g+sWh5Qimr/lkH5sHeFu5xKBcWaBkfwGnKZj/mgihmrTt1+n+CZg+0Rlcu9mewy/mnuJWlIyIG7
	wux/cx+ZjBura0tMULeKx1dqNArEx7B6OiJ2iQH/jNnfFkeml6l7kV/igPKuwIj/0Xhzk0EiI1gG4
	ZT+L9sJv3BLFqjKkniz05LNIdfezTM8Vy1F0UpjpH65rMVvR0EQYLixz37zGHNtzLBJ47R1Na03k2
	+dHWihBOglRqejrHbN34xEMGZgh7Hx98lF9Mnumd4ea2jsbQqW8505SLGxIBSLgjjwOtb0sN4l+u+
	j9LA33irAdTOiUKaJkGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28yf-0000000HZep-33KT;
	Thu, 03 Sep 2026 15:03:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28yc-0000000HZeP-3DoL
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 15:03:43 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 683DAj1X707880
	for <linux-phy@lists.infradead.org>; Thu, 3 Sep 2026 15:03:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=g+mnk5DfTfkUNUAaoQao6YSG
	lrDwKuJlbKUzFBnu94k=; b=MaIFM5vrc2Es2a+GS+SNJn68/bX+RLpG+XFZpFfm
	+Di0vIgm8COrv0sbZWgaC+OUV0Tq2jd1S1JwOY1eTogra50lMSw1Ggel7U7wJq26
	UAX3qU2NdMpYndr8uKqt+jPLSXKs0x2d+E6shIPHH0FXvNqO4aMZXEE1UwfkYWDd
	WpYt6OHw0ydnDeikHmfR4ss2/HY53dQR9t/fRjXAfo+24iD5h223Wl50NEiaKsIR
	VA1fej06vjY4srQRkvL0EU1SjcGZwwMZcbWuhEQIGZBeZewbC+jq4Tya13B60KJE
	mLt+0B4hjAqTlmpA+itds3ssL3nG7XHXl9+o6C4pSbl9Xw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gf4ekhwsh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 15:03:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-936aa34873bso384308585a.3
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 08:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788447821; x=1789052621; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=g+mnk5DfTfkUNUAaoQao6YSGlrDwKuJlbKUzFBnu94k=;
        b=ZxHfGH8rpB1hZPNQsxhui5tRNI73iUOfugxyFRQ+kRrL9PGxAUaP/stUw1Gk1XyLRu
         Leswn8zQdkEtZlV6AervdaQ0C4v9ftVDdbsjFFc0FZ/JaPijoDOuf/OeDMmmFLf0vAsk
         Kn3urNP+CM0v+hz6xDLbmVCbaak6gOLXE6HUvveHA2I/MpV77eksf/t5XMJG9wuUZ+rZ
         p1WQ7mMNPtjP0FaO8Yc1TfNESDQWmmRS6YHhswiZPTs5RWK61Iv1aBO1shHa74s2lb2j
         DGTEBP1o9Tvt+tSteoiZz2ohLvI4hoiyjkESMIBX9jlPs5eGkXVe/z2fxQwASTTBU9J7
         4YzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788447821; x=1789052621;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=g+mnk5DfTfkUNUAaoQao6YSGlrDwKuJlbKUzFBnu94k=;
        b=hVmyL4nq4ss7EEZdH1ZrYLtJ3z2pjez88OCOrD7NaDg4rpRChfNY4Cz7JDc1zt1/Rp
         FMx9ncYmXvrf+/S2XFetRCl+Rho4iDFvHBH1D1t4UlXzPqFRp+ZnJTg19Q2/aXmdCG07
         WvGjTCtUjGUj0MJvLb6JFszP4JA+DPqIqRGlUyIyrLCoPbqmTE6yPSjO7XdATycmZyp3
         8sbT2lQ50HtKZaGnAKvdNbTvUwEs0bvlbk4dE1+Ell0XrSkWAXMh91vuqvDazZ+pCtea
         gTPv9fTSCfFuI8ayZsevP3oEYkX2NyWV05nNWdfVVsd0YYMReZG178Q7hf/iW+VHlVhx
         6uGg==
X-Forwarded-Encrypted: i=1; AKwUvByWqtsM+MzjAPdJ8IAba5/WQc4a2fkBEoJ+c+3cBgdFP1/sxr6anDSw5xgoOQRQ+0JwCYHPGpaEGc8=@lists.infradead.org
X-Gm-Message-State: AFuF++nIAwZY+hHDIV+T4TZVphEfDtD1e3uXO1rsW6IaYwBldg1GJiWX
	0bVQV88DNzKrUyC8lWSKfqKRQH8+57aZKMcg9kGu8IBt65cLh8lqzfjlEPRzEEmelViAWLABwrB
	FHfH2Y2t8Gd9Cblbe0PE4cEJkUgqFBbvcR/lXxE3nHqLV3h4PfbULg6C4BBz5A636Rz/r
X-Gm-Gg: AYBFou3pjllin1VzyhvYB/FSYIpoDyDGlTOJFUy3y83CtxtZ2WLW3Dp4QWzse9Bt+ve
	s6gk5j0cJIcG1l8t3y3SKajRf0O0qxnqXv/gL6q8IFYUc0OXb2s/D/Ucv0SAtiNiNkuQKhEmluv
	mdZmb8nl4KswugTX+wdupv5feWuWbaRarCTMEMBpCdXhJGOtr0HCbiaxPHgvZ05iR6+5EiDZQ0h
	kwmvNNcwt8c9hLfK1HfOcacpV3HTnobZGP48XLYXDiRYN5scZLFhFRY38HuGTDrNklofPSUggvu
	cuyN/iEUahGTxk1DpFSjlX5Ms1j+mop1SWF+WFLYw28qILyNCnUcOnDTzUh3rVefr1f50UjN20J
	US3UIZXIZetH0mg==
X-Received: by 2002:a05:620a:1a25:b0:939:6dbd:de55 with SMTP id af79cd13be357-9397ec20921mr15185585a.18.1788447820873;
        Thu, 03 Sep 2026 08:03:40 -0700 (PDT)
X-Received: by 2002:a05:620a:1a25:b0:939:6dbd:de55 with SMTP id af79cd13be357-9397ec20921mr15172985a.18.1788447820325;
        Thu, 03 Sep 2026 08:03:40 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48448e6f604sm14339403f8f.2.2026.09.03.08.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 08:03:39 -0700 (PDT)
Date: Thu, 3 Sep 2026 18:03:37 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Iskren Chernev <me@iskren.info>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/5] phy: qcom-qusb2: Remove _SHIFT defines
Message-ID: <fkje34nz2eqlhm6nywtcvh5pue2qczmtks7dvcagpqb4ytniak@a4fd6jisdsji>
References: <20260903-topic-8996_61x5_qusb2phy-v2-0-4c3f980a4560@oss.qualcomm.com>
 <20260903-topic-8996_61x5_qusb2phy-v2-3-4c3f980a4560@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260903-topic-8996_61x5_qusb2phy-v2-3-4c3f980a4560@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: M7TkYZf0XjjLaL4CAhqrC7ASdKRzxgR3
X-Proofpoint-GUID: M7TkYZf0XjjLaL4CAhqrC7ASdKRzxgR3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAzMDEzMCBTYWx0ZWRfX/R20vggVD3Y6
 8++5SxSbFdCp7F6my5HeIkDp1rgssjHO+ztImT91gFFoo3Zxo/E2sQ7KfZV5PCGvKoUIqW9SUjC
 YKu8yqaAj8u0GMrNJ/zi20qmhvYigHZziE1rhDR7nAku2NuBUmTpm9IAPdJhmc9GLQ3Jt+yA8F5
 lblPNjXE40TfBuswJV0JJXdHnq2NSytBCcAOekUadUE65WGwsOI4BUkmw0H3QuZoiBSO+bN5aIC
 +yqqFPE65n2KoN8+RkwsqxAwj9j2B8XPO6vnLmgG+l/BigrN56mrmjRoyNGhwQd1PajtOL+bFAy
 zc2/2jN/Mgl8uewKOlWuhcneGndfmwaVFHaAKBvt6S3q5fCN+l8Z4rhOTbDwzH0VANSmakfu8UM
 SzgLyex/lJ1SPvIy4BN/ke/9aVjTYmXumZfuC1bIVaU2qTb+ud/RwOHaDJ5Zd0+0qV/n/lhflCM
 uX1/a4hSc/YgqjcS8Hw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAzMDEzMCBTYWx0ZWRfX4K5s9aPD8Rjh
 el1T1zziAXfCN+uRhkc+HS9GQiCwgFW27b0RvNtp5R3+dBEPL6qzcyXv8iIYPY7qC/YF2xzyqMN
 a9JsOw7X8o915qXTjk6ZwTcT4abHhV8=
X-Authority-Analysis: v=2.4 cv=PKc/P/qC c=1 sm=1 tr=0 ts=6a998c4d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=q7XEBjOi5DRkXzmV0jSBjQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=3bhTxtwNgCDITtlkWrAA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-03_04,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609030130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_080342_919677_8047B6FC 
X-CRM114-Status: UNSURE (   9.90  )
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

On 26-09-03 16:25:30, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> These are unnecessary as they may be inferred from the mask. Drop them.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
