Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA1F5CCD193
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 21:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQgTMNOqmU+5s9Gok5rq6nOC3AaVa4593JhtwCMu+cE=; b=wL+AffmTKJFFnC
	VEqjU/c1vt+jMYanznpah8pQEMcvltICmIFiQZgQ/QNE0bu3tOMKn/ZZ1qBFw55pMxn9PiUwdP/Br
	+qoDaxYwc1HNdgZ9wKxyWvE60GQ6LxA6vf4g/6zTfjisWgaruIcb5A+hIYTgxvR8jM0tfJqsxIjat
	o9iWIeD9mdmLPmHMb7cTVafct7X8aj7537vs15vNu8qZyb3Ke92SfG1JIt0489G+Wt7fFCqIUCdKg
	RixB03XOQ/jHerP0Y/91wWS9NrSfPazwWNap+osbXFtMo0JXoCvpBSs4zgTi+YsPh0b0UuKSJaeHy
	kU1fIf8qQepPLILg9epg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v98n6-00000002v8B-1qx5;
	Wed, 15 Oct 2025 21:12:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v98n3-00000002v7a-3lxx
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 21:12:11 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FK6tdu016274
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 21:12:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5QarBm3/FBTaPINCPchmgBMz
	MFWymhf3LhCoHGlEe58=; b=OLq1ZTSFcgtqTvn8xWUhmUuzlC1iw4+6plHbX4cZ
	8Hgylely1tQnUINm6rkeimpthUAg9vE+5M6an8TRJ7etQg9wY7HKGEv7qVLP4IJe
	Rf7/GQQSGOXLtALeOykNbmP6h7SGIcErchxu3cYmUET46kqf1MoIcx/lN6lmfIiv
	BjMYT9opMxmqpli+PskjQeE2hmhk8wzBF7SSn93UZsvb/xXsRZ12v/EjmIjsKHgq
	J6Znd1YymEoftCIZYb8Hj1QsfBJRnZ6hALiqTnMpatM0aHPc3I7UTyGTnuVhD4FQ
	XfOgEokYz+TyHieV52gUu5rfChmVrvtfj7S7n1Jke6xJug==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdkdxkd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 21:12:08 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-78ea15d3548so1218446d6.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 14:12:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760562727; x=1761167527;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5QarBm3/FBTaPINCPchmgBMzMFWymhf3LhCoHGlEe58=;
        b=L2XdwQ+g+y5R2vfdn1EI7qoWNMoW1hP26zpOnM9cxGjML5Tm+Qwt7ZQOnMpGHzGmBR
         DHRL/HaFxrzVyQagya1xEfDKqt6LnnHEeagAWCjVefBl7G62+DCHzGwNyXgEfSNgSwtC
         rGENssOQ+GAfwQJpTtL0NrtJffcwbkUi3YxkuO9DgbjmMLsZqOh1ReFoSvDQ26RSPNR8
         Q0VTatAANfutxk/H9nnCAG9WMa5oYPc4kR3QrY4BbbPQz9MOwQNSUo8xyi+YcvblvTE1
         60EbUBEiDn6qG7v3GIt/PDfRIGOYVPrCSmDL2+WwIk1JAccoQGE/TwW2qihsKRPhBdIw
         JA+g==
X-Forwarded-Encrypted: i=1; AJvYcCUBi4bPUEwBM2KdSCbvNKnGOGnsFjFBSjhLZ8TOa0o7YhGIoJ7xSjeobvZv89Rb5NAcK6M2u0jymzY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyz8qDng0eHxiHSlU2wldvzurZ1ri617JnkEqnmsOrpC4AdWTWH
	uow0QsOpclbuqZJSCiOpoLYMl0GztVPd+uIMlgxxkV8GF0E1xTCC2zdjlQeSpf8Gg3Ls2CZfztf
	XIK7AMtsVdJ4Zak9BalOaY1s8UIHrAEUZ3E5QzXmGCYqj2Oz0x3QU7w/i8GcUvTSDSJEV
X-Gm-Gg: ASbGncte6JWTt8hIF2W5FZfTvHz3QhPKRc9XvS+6V6MbZ0l1qO2ODIeXtpYfX2/iORe
	0+TCgvCXPo59LhG5nlPRILOXQdnVZfX9eCofNs+AcKVHznb479SnndXYoCz/QutovVQh4ocNu3l
	jnJOcO8EXVCBMjKVrJEPRlVY5Z0pP3Ze/f5tHTHc3iJY0kHHN3rSFq21KraNdOYg+OOYO1lckc7
	/DwKb4C2GixQm3fndXInCTUkI2ltr4I/4EymCUE65qfNKBE4WwKfvCR2rzQwPR9RVXw38igpQnB
	xQ0oEwqJt1wYKxPbq/icxeAz5SX6bxMm16VPKi7aI6hrHyNWtXPpXwm9khP9Dtx4rqoUNSg9Cdf
	DcyHZDy2uRd1x/vn/fNkXGZpXo3v9H6C3DL6OH4OV7zWvpBsaok+xovHrfPwKxWygLF2f452Ddt
	e5fm7uu30MrlQ=
X-Received: by 2002:a05:622a:4c18:b0:4d9:f929:1531 with SMTP id d75a77b69052e-4e6eace963bmr482626501cf.23.1760562727126;
        Wed, 15 Oct 2025 14:12:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0LHBOSbJEn+k23yLcJqtRiqQ+DR+KSHqYFpB6WhOFy5EPBlYMUm+Vj2w/1rwTr8n8KTdMLg==
X-Received: by 2002:a05:622a:4c18:b0:4d9:f929:1531 with SMTP id d75a77b69052e-4e6eace963bmr482625951cf.23.1760562726575;
        Wed, 15 Oct 2025 14:12:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea44326sm50043791fa.52.2025.10.15.14.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 14:12:05 -0700 (PDT)
Date: Thu, 16 Oct 2025 00:12:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/6] phy: qcom-qmp: qserdes-txrx: Add complete QMP
 PCIe PHY v8 register offsets
Message-ID: <7knbppndo4pbrbowacjbes2z6suigxwdlv6ejxib6lgkeuqrrt@lozxd3nvpf2d>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
 <20251015-kaanapali-pcie-upstream-v2-3-84fa7ea638a1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251015-kaanapali-pcie-upstream-v2-3-84fa7ea638a1@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: f2l62Zxq9YrMmGNpXwaW0DWCvhnTyA2N
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68f00e28 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=GXffbDEdBvPQuLycA38A:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: f2l62Zxq9YrMmGNpXwaW0DWCvhnTyA2N
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXyon2wTi0eSpn
 H9EEE8fZppxfl1FlOjz7eiYR9Z/dAeWYmoBlNKmoaBqpBw4F2F8iIM6fzKgp2ozitMzlhM1AWFE
 i0dYlXRx0/o8oE7+zKwhBqNPsPeFK/WC4mNwB8W0dmkbTa3A/ncYUIIjPrAjZSgedqQGKYn3zQX
 5433uiA5zxQ1NTtWUgNwlb5HKSiexQmEQMy9NUegvh0U+sTTMzCtCzP/f+9cOP4PNbIf2PXsV4f
 bLNy32CeWcHLAdSMTbwo4PZkqqHCaZ/T9SOwrcKd7hyqdfjbVrbcuzy79Y+GY1Lj3pvx0i73e2i
 h6PiUt6F8JvGR2luxlxgNIHFmcclHkLktunwLu5OqTHcaGnawCAFRSh0j+KvB38rLSAKrSWdeD3
 sFZ4TdnXyJ630eoNhmeziXBmznaIfg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_141210_056179_94DE4463 
X-CRM114-Status: GOOD (  12.86  )
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

On Wed, Oct 15, 2025 at 03:27:33AM -0700, Qiang Yu wrote:
> Kaanapali SoC uses QMP PHY with version v8 for PCIe Gen3 x2, but requires
> a completely unique qserdes-txrx register offsets compared to existing v8
> offsets.
> 
> Hence, add a dedicated header file containing the FULL SET of qserdes-txrx
> register definitions required for Kaanapali's PCIe PHY operation.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   | 71 ++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
