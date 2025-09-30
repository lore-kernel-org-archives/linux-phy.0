Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3653DCCA470
	for <linux-phy@archiver.kernel.org>; Tue, 30 Sep 2025 19:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zRlKoxfxXMuiC8DanjXYj/H9okwr7uNE1jKOoDe3ttY=; b=F5ABq2Or7GkuCA
	xF5XZPQLDc9zCO9B0OHPVbaneZJOv/mCL0Y9kDVBRI7XhZOybSJy1/9p0M0Pd3nZmnCnv8g+MPFSI
	Jjkp3qPxYi/fvzD4ZgIkh5+oD8VMAO72SqcHqS0NFT42krosy6OSTHfxIaGX7UwZVChXANuYNijwX
	cD9+OQ4KHBy9Hingtj8sUxOm2CCFTENCPO33mzasjL4540rXjWzMDdchnXMEaXKjzhcAAHeCpnPCM
	rOBNWTM7YVgXx24iQN32f15ElsEg/NwAlFeogOoWeXUVuSp0fDNsTF28uw6EEkS/z8w64Mp5mp8L2
	mNpxbdlQ+V9txb/jJhaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3fcU-0000000624f-44ok;
	Tue, 30 Sep 2025 19:02:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3fcR-0000000623h-2P8V
	for linux-phy@lists.infradead.org;
	Tue, 30 Sep 2025 19:02:37 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UCv3rE001263
	for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 19:02:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GXlbr7M+4a1GxvAP+G3ZXjJw
	cK9AWRREeeh4emtmxmk=; b=prJio/p1Pa9iQoymrsQUzUwSwVlmy62rZ0boPOeG
	5Co5oHJaznpcAf7BJjir0I0ubdKav7gNDPOI3BNhzvNVU2u1G1uhd2a06abQovcb
	/saq/MhHYC92LvUIaaB4jaXLPQPJtLSaK0t5ErQB6rSk7JyAd3xDQkowIG2rxbUF
	957QygvR48Eomfe6HOQ5Stw7QNm7S+HdvSFGVn+tlzJkmY1II40Vvdyi9BTLN/oG
	i04nl4mMg1WS4TFSJNoHVcmPcipJi5BoYPhGwlfe+D8b8gnSbpNU1REPcDVYQYl4
	JGYK0P8WVNCLk9noVXZFSBzhqetljnENIu2G8LDgl2w9cQ==
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fppr5nb1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 19:02:34 +0000 (GMT)
Received: by mail-il1-f199.google.com with SMTP id e9e14a558f8ab-42594b7f2ddso89024085ab.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 12:02:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759258953; x=1759863753;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GXlbr7M+4a1GxvAP+G3ZXjJwcK9AWRREeeh4emtmxmk=;
        b=d8KCAkRe6TtzmdumO3YJircYgOLJLQtuEqjoVcNDFsNh/K7OUAU1aav0aOdYTQ1TWj
         W7C9H9IlUZtEdi8zOIplLc9C4xgrQIBYFJL8bxeT/Y3Vm5BdRhkNFPwJgNTLlqHhI2MZ
         /IbQpXtXuEuFkJva0l/fzBIT6bPYaGplCtHDUibjI66LbsRPI3FXbqr+pN9Z3Pau7z+R
         h03XE9vdRgyV5HE9RsZSzbO6IXiEurraaZu9xwx2ueadQWio2l6wz943wM91C9VBWFzv
         O3Xm3FZF2n6itHkMNSefsvNFRr4uILZa2YxJi+3P7cIk9XogcxsRRynFq8jazxDuH4fU
         In/g==
X-Forwarded-Encrypted: i=1; AJvYcCXK/ocTrXq5aH/voo+l0twFvNDarI2MP0ViQIWABD2u4ifDxtY6+2GqF96MeEIp+KxroPcq+cIPgHM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxsn9JQGaTAKbtUdYIMl6oLMRpy+A6BRivgM/qtiTAYgNPxlkWa
	WEm+RFnES/mYJtNms3U47CmQFgYR1CiAz9mp0Qq/taQ5WMi+le35BbjBAKxQgWM6ezmIsb99W4X
	Urf5l+fCfMuLNwf2/HyN/5XJdpvOhFJaHRJOvmoh+7DN6eWY1N2lWhiIMqeuoZElszNZM
X-Gm-Gg: ASbGncvosjKRQlXakzmRJpEAmH+sdQY1cuvljRA77M58Q23+wyk44ZXAhWXCTo6vDM/
	Ord05CL8X627bmTBVigoi6lw7KOss7cUIJDSpuCByoDFNxO31HgkLuP/A0qj6rjikcy+PlJVlRd
	hyMXs0oA7nXND1yd7+EwCODDkjcfrZJ5PwqeJGG7iNNroccCqm5t1QNjw4h+wrTiuOpwIzX4naI
	GE/ZSruHz7t+EY4y060h4QiSQQ0rbPj+wY8sTOlExABdXHd3JguBfpF5uFnjaQ9IsM47EvSeK8j
	m91GDSbL25IBC3bWyg84rn9gUObDRm2jK3vEb6R9GQPF4ZPj3jYWyO4mCBl3PNGqPHCv5YmMhOU
	MImQmFXKdZs8ohKRhlS52M/CEM0LN/gHNrLhwpyQLTiDCQaJJtp5jxkx9BA==
X-Received: by 2002:a05:6e02:230a:b0:3f2:a771:9fb3 with SMTP id e9e14a558f8ab-42d8162461dmr18055275ab.27.1759258953238;
        Tue, 30 Sep 2025 12:02:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJV3txOav9sQu2ukayU7ugj9yuYkFavKZlUgXjEWPN2HKtbR36iIvOChi6ogqZ1DDolHbXtg==
X-Received: by 2002:a05:6e02:230a:b0:3f2:a771:9fb3 with SMTP id e9e14a558f8ab-42d8162461dmr18054575ab.27.1759258952745;
        Tue, 30 Sep 2025 12:02:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb7fe6b29sm35412471fa.63.2025.09.30.12.02.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:02:30 -0700 (PDT)
Date: Tue, 30 Sep 2025 22:02:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Romain Gantois <romain.gantois@bootlin.com>, Li Jun <jun.li@nxp.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: usb: switch: split out ports definition
Message-ID: <hio5xdgjb6oxejrnk3hy7ylro75p2ebqa6oczyuwuxk3xsbp5l@aewbvmuk3ldk>
References: <20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-060568de9538@linaro.org>
 <vwlshz5li23xlthn5delxwxdsdci5nc22iey3xih4qf5uhbory@clskdsy64xpx>
 <426679ae-03c4-47d5-895d-7c927b2c3b07@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <426679ae-03c4-47d5-895d-7c927b2c3b07@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDA4MiBTYWx0ZWRfX+uvOovlx6g9F
 rISOVfU2PsKLi2EBaAZAldSTsuoChw94C+c1MYz7rWWnPcX+6BsNUoy2Wo2aH++dW1T4qa29viP
 7H8cUx1Xae8fd2R9vDhNrPMmSKNWzolvUsstkpJmb4i1F/mH0eHKlahgoN3NS2nBbm+Z5XwpaX/
 riZ/t5ERfTnCFarKq4rFCDxiYjIQaxL028Gw/CeV8LyDAPzL5O23OHdYMv1i9MZWLZEVFDRgfz6
 aSbrPi/UR/mVJoSpBll0gOx97sjFsv/XHyDMs/XQicJ/S1ha8bHgHLxUo2vF6RXlGoBnnBM1ICO
 H9e4Hs4ikot9omOfsFnoUlOomuLthlLEyRZ2/0tJzG+HDzXto5da6+kgBFJe/rovF4quw4QnVE9
 tIcS0j2/URj06W6VJ5yGefHS7/pBMQ==
X-Proofpoint-ORIG-GUID: 89bnnsAC_jW31qIW00WPyuLa901x0MOE
X-Authority-Analysis: v=2.4 cv=GLoF0+NK c=1 sm=1 tr=0 ts=68dc294a cx=c_pps
 a=vy3nvQW9C2dqy/lMnN3IYg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=jIQbB08qyBSz40biqjoA:9 a=CjuIK1q_8ugA:10
 a=mHQ74H5e8mo-RpSg_uaF:22
X-Proofpoint-GUID: 89bnnsAC_jW31qIW00WPyuLa901x0MOE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509290082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_120235_730706_36DD1F5F 
X-CRM114-Status: GOOD (  18.50  )
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

On Tue, Sep 30, 2025 at 08:48:13PM +0200, Neil Armstrong wrote:
> On 9/30/25 20:43, Dmitry Baryshkov wrote:
> > On Tue, Sep 30, 2025 at 07:17:21PM +0200, Neil Armstrong wrote:
> > > The ports definition currently defined in the usb-switch.yaml
> > > fits standards devices which are either recipient of altmode
> > > muxing and orientation switching events or an element of the
> > > USB Super Speed data lanes.
> > > 
> > > This doesn't necessarely fit combo PHYs like the Qualcomm
> > > USB3/DP Combo which has a different ports representation.
> > > 
> > > Move the ports definition to a separate usb-switch-ports.yaml
> > > and reference it next to the usb-switch.yaml, except for
> > > the Qualcomm USB3/DP Combo PHY bindings.
> > 
> > Isn't it easier to make QMP PHY use $ref for port nodes instead of allOf
> > and keep ports definitions inside the usb-switch schema?
> 
> Rob asked to not do that... see https://lore.kernel.org/all/20250905175533.GA1000951-robh@kernel.org/

I'll respond there.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
