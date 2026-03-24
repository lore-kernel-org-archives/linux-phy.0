Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19727F54AD8
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 16:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+tTAB3ZsQxf+39oxYF7M/Fsxa6BPvYuJEWk/emwfig=; b=VD0hmlO9By2/Sf
	RIlLpMlcT9iG8WDZQHBDeZCxdHkk/TWKfKc5UIauomR1PWEG7NYG8hpCCoyA0PTHGuH7aUQImkl+P
	jf8e5w9mskP2AotuOgBv5P8r2CJ76RglRMUnkfVFKHDiOgFnlVzBLyeBp1HbDGAQ0y6aGU8VbMC0g
	B9VB9o6e7LtjFEb+L6F3eEIqQ4NWPlkmjoCN4uTr6wESm/vGvboVD29YOYb6gdNHXb8qwycYctMpC
	wy6M6szhqxxTw1WTg+NPWVAdisL35F9MVsRkrSXCLwOV887lLny3os62TT1kVvIAMYsFvE2rHSL47
	sdu/H1749wQN/H2k7Tow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54aJ-00000001t2e-2LMA;
	Tue, 24 Mar 2026 16:26:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54aG-00000001t2L-3ypr
	for linux-phy@lists.infradead.org;
	Tue, 24 Mar 2026 16:26:26 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62OEbfac2488047
	for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 16:26:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qYMcGVL12sVLD6LswJRJjS62
	cG5yQyLOgBfgiqP9H9Y=; b=SpROFtP2onSZ6qFBxGVgW5Oh+EIZMBwNpmix5jLk
	eI767TcZ4HluH3fV1aXKidI3oG7+0q2M1PS9wztxaWRgHd4ZwHVcgQmvxW/rMm6E
	xrBF8V0qXMo7Ges7VlQ+eVF+0FhQxwvNzlCpgUIjDoX3L+EXp10d1IXecvKSAD+N
	BzEALPn2CqFZJdBs9zrYRKocUwgh/tU1vaZWAOOJ4leudpGV01kdw3q/LRbg4+rs
	YprmX4jaIkQfv/crcevpka6ukyADPBpgkqpeg3qR9N+/OwKIm9WZT6TS+7PaQzEt
	Wh+FnXEY5XRp2fPHyPpqC/2rpD8R6b6gJ4UUBPIyaIW06Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d3vhvrfdq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 16:26:23 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50925fed647so97955041cf.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Mar 2026 09:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774369583; x=1774974383; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qYMcGVL12sVLD6LswJRJjS62cG5yQyLOgBfgiqP9H9Y=;
        b=gbSbD+8AIgVWU6nE61wd13ZyIhqY5n9ZzJ9XzfiRfj86EXO9l3yXOdzc4xIZHxLfB/
         5pLXVQWgQd7bHcthclYlno6VRV7Q9TvvlI8J/tQVYbE0F9rO4MfznPXjV/ApxFTvPwm4
         OE5TKKBFZTvjoDyElmArmyfHM/g4wc2gdtcn0PAQhi7ZGU2qXRkURKgMWtkIQGkw6JN3
         zXBh1e1QZTQ+0U0Jt42HPSo15tFdWxmIWwv6yBSiOZrtM2e/sEQ53zbkL2TOLFJ7B43Q
         O0Zxhd3IcdrwgJQXQhB5WhN9wJda5qGMOH9DQCFMd8R6/+pnIY8efUu1QSx5YKGU4HJa
         Elqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774369583; x=1774974383;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qYMcGVL12sVLD6LswJRJjS62cG5yQyLOgBfgiqP9H9Y=;
        b=WjFdyo0vN8tXywqePmt5/rexF0E705PxiGa4oe3kaCJ9RkKK7tb3KotiIYfgpH7FS+
         diLUiHDm6biKEyvLOxi07GWgv7E/tGStV0J1u8bFKTLkEOPXyhL8ydregE6escXTKPao
         Gugd3aXAylwasBkvJofZbvQgYGJBPH8IRIBQ8yzBml87j2Xqlf9rJHFMNFNlERC85pV/
         V/ZKLBnvCENcMBW0vrI4ARUkebllibkhGo8EvYQPwX9C3A+QKOj/FAKZi9p+Gfm3fK6o
         nL+xpe76iOQFhE5WTqIB+y6nbigQMcuPpd4h5xlqUV6RDl269o74oqQY4n59jr9D2y5f
         ugMw==
X-Forwarded-Encrypted: i=1; AJvYcCU9HAllLswfudhW/LO6yh7v9p9SrpdegUCkC+6mIwtXD5cc1pCSQacaMD7OoFOkhQMS7di6XQoi6aY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzt9yPjW+yi1hwSxtFGhvChFcFdN1BQsHwitZEHEP2c9zDuFFY4
	5JX0sFg+H0c0r8OL4IfIKA48M+ieHPEy3B+XmTvORIg10PgNtdA3LZW2HCe0SwYtZHcQckDqKYm
	ihVFaR3RSpkY+w+1f31hJtUcLeZsJqRCgj6SF8la/P2t/+tQU+x3Nislo8y8MR+9Y6dHl
X-Gm-Gg: ATEYQzzQzbZ6VOV3KBQ8LQNtc1KL6xp4Ru9AWbFm6hiq7ZSHf/oS6S+uFhnyFndJzyI
	l9KeQdEesxhHZmoSZXEss0Y3q/MMRmgssKy7tZUklRRNfsKpEXIgeKJMBHOTVFf31/Zmf9fJEpf
	WMTSKY9R4br11VAzIwPIl19DYt9XAWmOCps0dlYLxuBONFSLcYqaO0FDfL+HVgHpFcCEEYsph7j
	XTLSLw/imjPtprMiVtaLt5rGoRkRiHGdfkNcGFVy78/zXsAbnfV5GCq/2OAt60dIhdoN+k/DkR0
	s26VFlb/628UFLCdLuLVaVAHNXYWwhPN3h+UPjIqAplMa+yuNc+nO1sXl6eyF9YOnWc8JlO3uKX
	CAsLRd36ie/FKBHXfoHqOchwyFA3fOeyNiw==
X-Received: by 2002:a05:622a:2285:b0:509:3141:312c with SMTP id d75a77b69052e-50b81b0f234mr18101cf.40.1774369582480;
        Tue, 24 Mar 2026 09:26:22 -0700 (PDT)
X-Received: by 2002:a05:622a:2285:b0:509:3141:312c with SMTP id d75a77b69052e-50b81b0f234mr17591cf.40.1774369581870;
        Tue, 24 Mar 2026 09:26:21 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b644bdaf8sm44763958f8f.13.2026.03.24.09.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 09:26:20 -0700 (PDT)
Date: Tue, 24 Mar 2026 18:26:17 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] phy: qcom: qmp-pcie: Add Gen5 8-lanes mode for
 Glymur
Message-ID: <rtlki432tho35wzq6t252na52eaz4tqtembz7goqhble73aogt@wusxa6s3xjh3>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
 <20260323-glymur_gen5x8_phy_0323-v2-4-ce0fc07f0e52@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260323-glymur_gen5x8_phy_0323-v2-4-ce0fc07f0e52@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI0MDEyOCBTYWx0ZWRfX+NL4p5dfZAoJ
 UTGDiyICLg+0GbtkL5swR0eXD3U4kLL2WutFN5ByvHPqVvoOg36/kvL6L046LjIIQKo+7uONpZ0
 xrIe8giNp5tvD155hJtrO7cNyHQVbtXp2HpB46jMAzOUJ2P9ybHt/wtMhzs6Evvdr6R5XPrQRrl
 RKUxizZHNb/58B+P+TZ82bLD9Zb4wUE9DUbFbiokVGT5IsNHMXH9MzM8Bp14l67Ci3O62+jcRx1
 ijkkQMBooO8rWV2Eq80lHLhL0jcCRHgHNKfvy3DzeprP5wWdjpQgA+jc7DN2uK1LjMPT6jmuWEY
 tey/pWxgsBVM/QWcFDgm2vK2H9Xaljib6aH2GZnE/mp3G6IZnKgnyu2TqNYvZJ28LMasMU7Gjw5
 1/UPn1rPXFr5toxmzHef1H4Qffk6z7gdJcF7YATPY1taHAdumRs8hVRTkx9nvYPOnnzMM+4n6WR
 uqkh5yah9J4Rze/N7Aw==
X-Authority-Analysis: v=2.4 cv=P5M3RyAu c=1 sm=1 tr=0 ts=69c2bb2f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=TM4ErUj_GH9VF2dpSNYA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: XbWjD1ZcHA3JA7NTg3giTvqJUE27oBgr
X-Proofpoint-GUID: XbWjD1ZcHA3JA7NTg3giTvqJUE27oBgr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-24_03,2026-03-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603240128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_092625_018137_669EC2A6 
X-CRM114-Status: UNSURE (   9.66  )
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

On 26-03-23 00:15:31, Qiang Yu wrote:
> The third PCIe controller on Glymur SoC supports 8-lane operation via
> bifurcation of two PHYs (each requires separate power domian, resets and
> aux clk).
> 
> Add dedicated reset/no_csr reset list ("phy_b", "phy_b_nocsr") and
> clock ("phy_b_aux") required for 8-lane operation. Introduce new
> glymur_qmp_gen5x8_pciephy_cfg configuration to enable PCIe Gen5 x8 mode.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
