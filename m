Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A94E7C369D7
	for <linux-phy@archiver.kernel.org>; Thu, 24 Apr 2025 11:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jvuo+r2fdUAf/Wd0izRSczNAVGPGoaiOSkB5Q6Y+GM=; b=mbM65g1JublXj3
	wsoKzXrIh+gF9tPGBvGDqAoo44QkDvj2C2/5WLqJdXOSOM132PBXqReRK30kxm1hXUMqEBe/sNgHh
	Bfelc/f/UFpyjDmhl6mRef4hbiIfoVYUJ1nzWCWRsTR7OoMo7Sa++m0mjl8XTpdxM9xmG/AT6ewHw
	GgAq9Uw1RwQ1kGXNFOp6cVP+zblJg2P2YQhYZgZKD8WbFiaJx95xzLYU45tY/B1loLv3C3pC1bgYm
	BGYIxO9ySju7cy47VE7qMjRVTIRGnENVL1u+xuqUvKkN7aPFuuuCpRug7MtN/voCha9vVo76JS7pJ
	Wsa9NMu3TTQCHkOmnm3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7utM-0000000DsqW-48bw;
	Thu, 24 Apr 2025 11:37:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7t1i-0000000DX2w-3fAb
	for linux-phy@bombadil.infradead.org;
	Thu, 24 Apr 2025 09:37:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=DgOyK6Aj8y9bqEdW8CqXJdRwZh5pW+vbS8PbU9FROaw=; b=n1u+VQT6MzXyWNuhpI5ud/t7yW
	l5sstD/6IQgwQN7YYMxYeSkB4xjLqZ6LCTYD/WpsqAG8TSyYA8wp96WX3/kCRf1q4539xHZI5eulB
	Dyfc98XaQZWz6PQhi3+FICqeOBSDMBb/9EU3cjCYfXYFNqruSrMaiY4j5SWreKvkEFBWQxgiGQC+s
	D2GwdDOq2+CuQcwOrK5SyqUTbamRqfz7nXFiGYVw0iqoqmadxZWuzCQ2j30etW3Gcfx/D7KAFd5LI
	GM5ZfI6afTpo+21lGJnt32IEXC9RZe91cOooo4W/U0aTtPXmBjO6yJEKaWKrFp171FsbQxCoF1HDF
	vIHXfNkQ==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7t1f-0000000Bggr-3eWv
	for linux-phy@lists.infradead.org;
	Thu, 24 Apr 2025 09:37:49 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53O0F6r7028362
	for <linux-phy@lists.infradead.org>; Thu, 24 Apr 2025 09:37:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DgOyK6Aj8y9bqEdW8CqXJdRw
	Zh5pW+vbS8PbU9FROaw=; b=hp8m0nAXnk4d4G02FKP6jguqp+UJUzC/82qow50d
	0L7MigqO8ITXrjG01Ox7yDCBSQMzPp6l8v3ZvSHeEqTiTX0L0jBwionjBfVRlCqZ
	sUwSw8jI5DLKU5IkJI/q4VZXIKW7BaVSbVObrfeAS8ZdP6oUnaM9W02ZgE2NA5pl
	GqOXFCdp1mmQ9J/Oziptyfj041KAOufp1hFq6dY8nshF5y/x4/efekkiqUbGLv7z
	BNVnAYRw4+WgrXvhPsJ2pmkkEdS6g+WlgyIzOuYO9oKFtI2AuThDuFWms17ecRwx
	1BnG3atS1yT9goBfnBj/5LnBzmk9UTOpkSk0bg8hiIRZDA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jgy50sb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 24 Apr 2025 09:37:44 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-47699e92ab0so15929211cf.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Apr 2025 02:37:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745487463; x=1746092263;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DgOyK6Aj8y9bqEdW8CqXJdRwZh5pW+vbS8PbU9FROaw=;
        b=Et3PuAKhx3/tpnp0yNTnQkmzKXrhn6bocVCiHbQxpvoGL2icsyFmH62Jqz1YN2QgJi
         vyOaGIKNpEqDg8fEieVEopIQb8dONzELElnvooWFXdWYa43ZVPP+nnx+tJBSJ/BNvxla
         gC80yIsiYwBB6NMHrJfSiaqb1lUYFwHQ/cNdNBd4Il1Q3iVDnfmquittAXbupHsszxlW
         PofI7OkbgB2CceLIA/BZm707iXDlqNei4lRlgoiksP8eaTfllfqg77e3j2lid/lUWkl/
         LXLtKJ5Cw6jzBCYFKezAFivhKKUUVPfwSnyLkp8U4cspw6XvxBzBKugqQwU9m38lmi/c
         VmKQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlM3BA83zspgje5uWMEdJRn8/n75YGR9qZELVYJpb5Z8vkI6ikWGxc7GQpMgakdHQYGR8U+x9GR6A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7RQeRY62tLsBDgBOEwwUAPqe+tiHdxbu/1EayE2hMASqBbzej
	X9kxkHgCWLLCxM+jzEN0kXpExv/uRjaiEQS05rQeEqIMF0uB1cXXJ8GGTusfRSaAoStsTQKJHc+
	pFrTkXg9RVeHtgC3OdxoWXopoM0ih1NcrPL7bvX2sl24DmDXp+B3thFlgMC8feevyy1mLQkre
X-Gm-Gg: ASbGncsrc51kqmbw6CH+4Lsprivc7REZ7jNK5A4DfmXI/elhsdPzBzav0nDQbTwsBgY
	5+ZX/EMWHh84isFbGrnI2pZS3ruwttpwXJQ93zyAA4GNoES1n196Z7axcKRyalzKCiAYLtXZ+Hl
	2iXYsu/Op+ns8T0rSVfIgrTYp0D7C0UZyd/FUvJUZbqz3wGsmyc0Dw9waNlVdvzRxQr7OlJE2Tq
	j3PhO03JN2SiVKWlWYQx+7T3fadPDuXeaD79Yzol267kxcTy/OUuwr5a9Q+N9h579sCHpJ7HD1+
	juU+QyUiPnMoDNIf0nkDbAytT3BHS6Zl2H1774m1k+JWO0K5I9/uGavmmgwHRKGKD6m5AyGOeAg
	=
X-Received: by 2002:ac8:7e92:0:b0:476:850a:5b34 with SMTP id d75a77b69052e-47eb33a7730mr30466861cf.30.1745487463414;
        Thu, 24 Apr 2025 02:37:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1eEvXAeDIBJ+oaIV6NuXCx1ty2W8MF/z7TiaW3cFjO6fXs6cgqkeV3Jv4TZtIDAyz/pl37w==
X-Received: by 2002:ac8:7e92:0:b0:476:850a:5b34 with SMTP id d75a77b69052e-47eb33a7730mr30466451cf.30.1745487462999;
        Thu, 24 Apr 2025 02:37:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cc9ea4asm166075e87.149.2025.04.24.02.37.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 02:37:41 -0700 (PDT)
Date: Thu, 24 Apr 2025 12:37:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 04/10] phy: qcom: qmp-combo: Add new PHY sequences for
 SM8750
Message-ID: <ayfgkx7ep3pglzydno3waipm4xqcbuj4v4go7tvm5j3hu7mswr@ceqbynkuidcb>
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
 <20250421-sm8750_usb_master-v5-4-25c79ed01d02@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250421-sm8750_usb_master-v5-4-25c79ed01d02@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI0MDA2MyBTYWx0ZWRfXxNTv3TJoUkdI 1kLguG3hHPzv/OpmnN/Z+dtxC8VZJ6Co3aL+18BFJvwM/2qnroV7TIMxhDmgmf/99xiTxW/gtN8 Ro9rrQv96nNjMlNonLkveipATIurtPbqrm+/x6k/pPaUizG9PLBuCsCi0FRqDoBWVunNdK5ZqxA
 Qf76tBYWIegPkU30uUjoVMq8YRDk9y1NdAW75qb27vNF8UMbvAEz7oz02Qud3G893/GJU2tmAyh bXCEyYYvF3JQlCsk5OZf/Afn5KT0O5folaTIhOIxfKFGu+ZUrXJzv+EsUei6oRCtakGBiYs+7OA 0ukBI/G54ny/8oUu0GcofDzGZc6Gt5slOZ7jiPv8dC+tjyGGdNCRnkY0J1dIEnyMZ3dA4afOwCj
 VBMLOB8rbPeMwpE7Mel45N9Z9XDSPlLDhVwHKcIIsGz16jFGd4lNnsfjYmrnyRMo6vzGdDHA
X-Proofpoint-GUID: oR0J-mGpFfUqf9aUT2OWPRxymB2IorDR
X-Proofpoint-ORIG-GUID: oR0J-mGpFfUqf9aUT2OWPRxymB2IorDR
X-Authority-Analysis: v=2.4 cv=M5VNKzws c=1 sm=1 tr=0 ts=680a0668 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=9yGODh8E-QI5J-fucZYA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-24_04,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=901 malwarescore=0 impostorscore=0 clxscore=1015
 suspectscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504240063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_103748_218686_C5795362 
X-CRM114-Status: GOOD (  13.95  )
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

On Mon, Apr 21, 2025 at 03:00:11PM -0700, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Add new register offsets and PHY values for SM8750. Some of the previous
> definitions can be leveraged from older PHY versions as offsets within
> registers have not changed. This also updates the PHY sequence that is
> recommended after running hardware characterization.

What is updated? I see only additions.

> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 221 +++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v8.h     |  38 ++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8.h         |  32 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  64 ++++++
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v8.h    |  68 +++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |   5 +
>  6 files changed, 428 insertions(+)
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
