Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B71C8CAC5B8
	for <linux-phy@archiver.kernel.org>; Tue, 30 Sep 2025 19:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClQfMbrMv2ibmnYn8sj2KeOZprIkqjMR/LWTroPbt28=; b=S+LNUvxpoX7u1B
	aU701kt/KOcKdPPzkCWu7wFUoKRaTT37+td5IsioFeJ/l10lIc9/UoDmBO0GodVe9mszIHmVtfmo0
	TxspDgQ0/KFvhtuk9wSbBrC4uhCZyYUBJRRQbGJuAxQuXncQhuojZDJjhNEns+0tNeZURW/0RMCzt
	x+QEm3XEX8pDf2rA8P+MTgPT9vyO36qNKThWuw8PxZT3n9BVju2IJe31KW60j1qt/Ga2eInDcKm1A
	7SjbSIvQRQ8acaHF3Vz8KREsFtE0MoUkjNORu85UQcBbvc6+4eQXkjZnFhxHgEmxtXpH3DMeDG447
	YM1Zfi02Odrm1rxIfZ+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3fkA-000000062vM-1IS4;
	Tue, 30 Sep 2025 19:10:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3fk7-000000062uX-1QBx
	for linux-phy@lists.infradead.org;
	Tue, 30 Sep 2025 19:10:32 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UBAXuQ011760
	for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 19:10:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KaP73elixzl4ZUoebFDxy0mN
	/aCsbQY22jycZNAiNhA=; b=LJ3EwsB1TbVDW6WIi6kQpRsBewLotwSs5Y+pi60L
	fgQ/3S86ppNcIFGKzGAFuzwtw+yjTI3e6Uwvg9/DpB47+wU+GN6UFpUsgxH970Ni
	eo4Z9UgCbm1KPj81wTGeSOpQNgTzzTDX+j5OOmIgdgc5NsD/LatDIYuoPuHh+mOv
	xU1EsJywoPKlNgDSlz/5/RD9xNgT7/dR6ZSwUpJS2p/IXnHrh7f+qvPSwz8ZAy7u
	1AvsFqG1404eSe09VUcFtuEVf2D9oE1PXyyAbA9Ja/7kTvR6vepsswmh2E9m946Y
	Y/bXWc8dcFn9yWdY/OTS4FJs07XJtT8PYB4w1ZgRjYszTg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e5mcthnh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 19:10:30 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4dbd8484abbso77789061cf.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 12:10:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759259429; x=1759864229;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaP73elixzl4ZUoebFDxy0mN/aCsbQY22jycZNAiNhA=;
        b=uob6oUirFEU3yXN2v9lMiXFrJQMELltA724r4oCCZzab7uA89+p6sLD5icO6q7xCRY
         w/4Du2uNj8PTPdYaDTwGhKiJ6+otg8mQ9IN2VJXNxdX9urTYnhXioWqVzh45DwKdBorQ
         OcDIeAvlwoX99C5sULXwuNm8GWoQ7Yn+HoHmyoG/OVs16ZAHns/eMj3dCNm4go+OFb75
         eVjZr+/n5EpsBsva4YdkE8hgdKuXOlObeOnsAbxlFx4a4qP8EIIQHBv6ZmRdybfCMp4X
         /iijdLgmajdwJ0KBLmTNWnCXM3XyPlPw4FPYc/eFgV14sq71HRJmde6hp78+LrO+oNPC
         PWcw==
X-Forwarded-Encrypted: i=1; AJvYcCW1B+OAv+CmLQZzaAn2VSWMlAj2S80j4oyRn1WoiLNIQJ9yalhePBz24gL9/GbBEEcqoxDfBTdbOvo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5TQaIr2nHhF1Hqex6UzszIV80NuAokxefnKY8ZSIXzLqNLB3T
	lVp+BmWBAuPwywCYZNZ6SkRvrSfqeKC7vFNpR8J0W8pwHVIOHYUGTuzKDKvSUaKWvOanJO8LPiD
	H+Gv8X1vMBTk7s9BJ2ppnTwCP1xpsbWSA0ZHlQDN19pDFRaIqOTowsom6eXpOL7sXtQLD
X-Gm-Gg: ASbGncvrJrI56HWzjPIasKRRTr2DCAUsLzgkjE947++AQid/gl9BMmj7xskLSqsL+9I
	tA/yyZIl1nwalzQ9qQKvznpaHZhagkTzfj0FrCDiAdvH65K9odY4ADLXi9JhjsmhgFFR8oOjroC
	Hx+pCV4JjQOqMv2ZhTjPYXJBjxtzVAsrQ8m8C7USGYmyGrRtO8czd5bzCraOBlRBh3FLfqNnVTh
	dzt3V8zfspeb598h4lMyPsk/wbvWY0Cvl4uRnuUqe1ogKB/51UJec9Tluunw00NpJa8Yx9FvFh3
	a2Ohs6Xa+7x5vFuNHEQXrUe9dIaDcwJDagUKcxyqOBP33sL21yoqMJMGQGDgYxcNiWsWorwEtTw
	ZXPXgQPRtSmS/slwK+Ryuq8z8GyjxKJhhmHAjI2N7yraExtnkp7UZpG9TzQ==
X-Received: by 2002:ac8:590b:0:b0:4e3:2347:e09d with SMTP id d75a77b69052e-4e41de72003mr9046031cf.48.1759259428809;
        Tue, 30 Sep 2025 12:10:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEzV2iLngdinAfpYz6LMemQN0HNVnTxKUNLX9DKPaa9tp4J7rq08PEz47QNaOv/YjDZWGvTXQ==
X-Received: by 2002:ac8:590b:0:b0:4e3:2347:e09d with SMTP id d75a77b69052e-4e41de72003mr9045591cf.48.1759259428340;
        Tue, 30 Sep 2025 12:10:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58749849177sm2220124e87.103.2025.09.30.12.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:10:27 -0700 (PDT)
Date: Tue, 30 Sep 2025 22:10:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: do not
 reference whole usb-switch.yaml
Message-ID: <nwtt76n4t7tlf26ex47wrot7g7nldtmavbzgwmluls3egamjsi@mkomopb6fjh6>
References: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
 <20250905175533.GA1000951-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250905175533.GA1000951-robh@kernel.org>
X-Authority-Analysis: v=2.4 cv=RMC+3oi+ c=1 sm=1 tr=0 ts=68dc2b26 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=SzPxuEgdeXQIFyuOAFQA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: iBDnkehheoxOleYlNjkUoJDSI_eWmmQl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwNCBTYWx0ZWRfX8l9UVVRKS+7J
 jKa1q2FnQ9ftt0qSewW1JlbQp4AqP9L4NlrpBTYFfmgZ3ko+vqVXiKBfuzW6OmV5oNMNfHkq5Jv
 P/Z8MbdNsqcqZZ2lodbpVpjEMpEazJ5mupQfku2jcebKFIlBe1xNCqVkMxNdFb+IlMsQ2LdhRQM
 DJ1fK2fBgYf1reqGlrz5roc9VxQr0La/68DC+KuYv0E0jRXvrRM4tiYtixRxxYuTFHzZAYSc+F+
 emKA8v0SNG+AdwdNXztcdkC9cjNlN9zXglYoDdEVpR7b+DMuo2sWN/64Ut9kMPsBsDXlr6Ur2KD
 7KdjMaXle1tx5h3M4srSg1F6kuaS8XLgVrXuTMF43IYh0eDheN7KlcHA4qeC/T2cGIIj1mLAWqS
 iRbB9aQAsChAN0OdPMJ4CKCi3Ce4Aw==
X-Proofpoint-GUID: iBDnkehheoxOleYlNjkUoJDSI_eWmmQl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 suspectscore=0 impostorscore=0 spamscore=0
 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_121031_385224_3B0D8456 
X-CRM114-Status: GOOD (  21.83  )
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

On Fri, Sep 05, 2025 at 12:55:33PM -0500, Rob Herring wrote:
> On Tue, Sep 02, 2025 at 06:10:05PM +0200, Neil Armstrong wrote:
> > Both bindings describe a different layout of the ports properties,
> > leading to errors when validating DT using this PHY bindings as
> > reported by Rob Herring.
> > 
> > Reported-by: Rob Herring <robh@kernel.org>
> > Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
> > Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > ---
> >  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > index c8bc512df08b5694c8599f475de78679a4438449..5005514d7c3a1e4a8893883497fd204bc04e12be 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > @@ -73,8 +73,11 @@ properties:
> >      description:
> >        See include/dt-bindings/phy/phy-qcom-qmp.h
> >  
> > -  mode-switch: true
> > -  orientation-switch: true
> > +  mode-switch:
> > +    $ref: /schemas/usb/usb-switch.yaml#properties/mode-switch
> > +
> > +  orientation-switch:
> > +    $ref: /schemas/usb/usb-switch.yaml#properties/orientation-switch
> 
> This is a pattern we try to avoid with references at a property level. I 
> prefer you make port and ports not required in usb-switch.yaml.

But this solution is also not perfect. E.g.
Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml should
only allow the orienttion-switch property, while using
allOf:$ref:usb-switch.yaml allows all three (orientation-switch,
mode-switch, retimer-switch).

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
