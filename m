Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7051DCC6B03
	for <linux-phy@archiver.kernel.org>; Tue, 13 Oct 2026 08:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhpCSGM6P80RvpA7ef8egWjzki5GauhPA1aTNJd1ZK8=; b=ntuyjpUuh9NPWv
	t3Z9DHy6YukGEg7EyLWkIAz/evftf2G/f26Imu66PNBSLDQuXIlrgkqQd6nQfH/0RcBky0dT/8g5Y
	QW2trLpE7iLUx4fxp6tAnzy1DVJdS0TG+7a7wHIQdugiJ3avk20yI86nGfY93Uvj7VcMkVFGlJhJA
	ChW8rNbpAlGBjsqzSoZ+qc/ychmhHacywC46SEolqjtleenXtdEG+zzggADb2LxSzBKp3gaSLLP3F
	QrsF/ze04rZ3y1nJNTkL8y0GGGHtIfQl6Kb8tkPWe0eErGnUrlODyQG959UgZ7FK0aVbD0sqyGq1p
	5EKmNwooFzqFkSExemMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGY71-0000000CMU1-0D3U;
	Tue, 13 Oct 2026 08:43:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGY6y-0000000CMT5-0tvp
	for linux-phy@lists.infradead.org;
	Tue, 13 Oct 2026 08:43:53 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69D6CQKm949222
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 08:43:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Yc/i6Ly2rNsxUbSaUmJUhfLI
	QFe9Hx3IIvJnLq1sVTY=; b=KSQQ5qDeYM+REXRYZq2zWSqUMlDxWCzjIgsLjc2M
	I4GfGiuSZncKRlBLxhD9KplDvUaixT17R0KXVh5TBKJr1oDIqWFkqrpk0WSpAad5
	Kh6b9pLquS3QS2bn8T7HWhBWiIQyqlgWXB/Dof/Lk4JZk64yEcDfd1h0XC0XOXbD
	l7S3qJLiQmsoKfsyMHBdro6w48vueE6SAPmaPfF7B00eJQxeJ0iA/qxAn21PqnCv
	ImXkCe4q+bPEhRKHuJsp8hy5owvx+dAAOPR77eUeUmN0RbRPgQRcFkXAcGjUIyap
	1yWwgZQsArp5K31OnqAbG9U+Ic29LY1YqnPhG6Z7CdA28g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9f628kam-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 08:43:49 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-93cb93c874bso907824685a.0
        for <linux-phy@lists.infradead.org>; Tue, 13 Oct 2026 01:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791881029; x=1792485829; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Yc/i6Ly2rNsxUbSaUmJUhfLIQFe9Hx3IIvJnLq1sVTY=;
        b=BdXMXwaYopa+Yi70BR1sSKORdQdA+LsrVGnaHTEwSciRjm6DmBWxeVDtC+pUb7vX/G
         H+NPTPombF4z9c/RIYiaOBiVOXgh3kIlka2ScoNDob/XrK/a9otKrfkAeHX+kdWXKQRk
         V1z5VuVpuIPc2ss52KMP/8q3s5raPKaKHzmG9oMvKQOGBYaxevy1vKtzVj1dqBWxZcFN
         NuHTUbCzLYES7Glhth/icAl+JhpXe/FqMWEe30P5BJWSi1Qw5v3rJXvOFT17rZW4/HDL
         eBGKMpATg4P571tu+GunNDe4ng5QXSpXCdaDfOag8zibIs+WiJpqkzvaxcUOtBVOMR4Z
         FsbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791881029; x=1792485829;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Yc/i6Ly2rNsxUbSaUmJUhfLIQFe9Hx3IIvJnLq1sVTY=;
        b=JnPc5YE7E+VSZRxW+V62RLcZi+i3cms3TFBCtOiyZk1P2LwZZiZjvxMNGmpoWSSfqj
         85QhlCu+81G/0GZYhshI0R0wa7CfecFILJc4oFLo++DylxWe+s3iZyxTUkK2y99isjxq
         ojL1WAt7ciF8hgGXFRFyr7R+vJwXXFwBHzd3+rWrcuDFwx8bArTmtelM5p3Ai7W8LLdS
         fNFAbebJtbJkHErRJs7lLLRpoQeNpd7XXDkfmCs9MP815YB3Z/xedsUEBD94lMZeT/qo
         IhfvBJXz9CVVn72FvRajXjId2Y4eeVb/B8DdH1yKuiMC8VkktRt6/lbbVqO6OXxZjNpX
         jA0A==
X-Forwarded-Encrypted: i=1; AKwUvBwbisSSE1HbM536yz19ticqMVLrpyQOj4mgeIT6wzqbhqV20CC2tNrJybO35CXcW21lv9U6vMyMc/Q=@lists.infradead.org
X-Gm-Message-State: AFq9FYL4/vnJP6P1v7SdLglb9Dqya8KED/KBIAAjPU8Fb+F5rXUKv8tz
	cpQ9QD4IMRi6rnlieHMukOj/NQgHlIBRt8g5F4AStLIEMbyMyoBACDRsCh4g2SJBQZl0cvHwZwr
	8by+bRs8tGqYuVdjVfQIVBeP7HAAlYAKFPnXoYhUOKdvMZvEgiAWfuQYxhvyXjyanME81
X-Gm-Gg: AYBFou1mAIiUsrp3C8f874uevwpt3GgnjoZo9F8sm4G0GKhe/rXMeaivYLUzL/oT6gI
	u9J137rIyXM/c2W3FKsp4GhD1UZtFi16MEVX8UiHzUUUra6YNxBsguYFQZHmDkVC3qex1m8ZcF7
	vcikS9uFL2h7YK6DXcObYh5lMWV3o3TXBMnOk4tWrhHpFDZk+qcIWHEahv/9Z8RUEVf9f0aFDL6
	E2K22PY60ObcG/rQqGXF6SmFJMg4LNV1aqysz2SHRcA4VRucCpV03lKlY7JbRs+xrr1mZYpCabx
	jfvpLv/CXj0n1irWjkrd2mvrlBbGMGe/v7V+EXN5tXD/neXRYDMyOq/exWQ45Anqk4cgLq0V9X/
	b+iSD9LQsyKw2JpA=
X-Received: by 2002:a05:620a:c86:b0:93e:c12d:4ecc with SMTP id af79cd13be357-93ec12d5528mr1199090685a.44.1791881029052;
        Tue, 13 Oct 2026 01:43:49 -0700 (PDT)
X-Received: by 2002:a05:620a:c86:b0:93e:c12d:4ecc with SMTP id af79cd13be357-93ec12d5528mr1199088785a.44.1791881028530;
        Tue, 13 Oct 2026 01:43:48 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.215])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48de2e2ef2fsm2500383f8f.59.2026.10.13.01.43.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 01:43:47 -0700 (PDT)
Date: Tue, 13 Oct 2026 11:43:45 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v2 07/13] phy: qcom: edp: Add Nord-specific register
 offsets
Message-ID: <hhiwnl2hb2ckzmypy4b2f7wzdmtrpdylx2j3vaoj4w6rvgvgrk@sofvxozmsfbm>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
 <20261012-nord-drv-dt-v2-7-a2ab9af954d2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261012-nord-drv-dt-v2-7-a2ab9af954d2@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=FOKOVOos c=1 sm=1 tr=0 ts=6acdef45 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Rt3kCFFBWhWisHNmluDamg==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=ADyQKbfvbAjpQ-Ovcv4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEzMDAzNCBTYWx0ZWRfX8sVENEwaTIOq
 dEkSu7cPoP5OHzInZZsiegrakWbj8Ws3S7aMMEv4VjFOyEz3/tmq6rY+lGKkOSYSf9COiywX9H1
 xCkc2gkDPHvKb8/RFBb4tvCw4wSj+4k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEzMDAzNCBTYWx0ZWRfX3fcgn2ertUcX
 Fd4fKSoS53gTXwdChEqUUtgk2e32x84Ujvk6iICfRR7KhLotxomYq5UsC9c5XYzqboCVSOOI69i
 yajRow9EcDpb07maB0vyKOgWEyMyTTdLc5/7XBVqb4qwv/sRqEcbHI3PgGEcoYf1GXS3kuzQzBO
 XMDpJqqGdnLoTZKVzM1MmRLbeJb2mNrAK0lpe6DFKAVF9eIEBPUTA8kmV2VFS+9yPDWGSgh1uRM
 l++b8kZoLiW6NUo+UzInfi1c3aHAysM99CZHE6oYplOMgJCbgRa7Fh6rNg0YOduJGFJ075vLe5M
 8awm+bZMfaq949WIbUj73Usoaj3wSae09g9GTY89dZROYx6JUX+ay3P9n9GT/EBPiupPLareVy8
 nAR91X0M3Zs/njC3k66ixHofjAR7S8qQnNPXGk8K4KHbYctcxDeU4/SS0+bNZItoi5lOWyMLZ35
 U6BPMPypeJ42OZ/ZrVQ==
X-Proofpoint-GUID: Alf87vAa_Cv18sUs2FLvY1zyPF5EddS-
X-Proofpoint-ORIG-GUID: Alf87vAa_Cv18sUs2FLvY1zyPF5EddS-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610130034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_014352_378760_F2A5061B 
X-CRM114-Status: GOOD (  10.80  )
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

On 26-10-12 19:02:17, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Nord relocates several DP PHY and QSERDES v8 COM registers relative
> to existing SoCs.  Add Nord-specific defines for the relocated and
> new-only registers in phy-qcom-qmp-qserdes-dp-com-v8.h and
> phy-qcom-edp.c so Nord sequences can reference them by name.
> 
> Assisted-by: LLM
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
