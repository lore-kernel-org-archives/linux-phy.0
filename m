Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9955C54E65
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 12:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlxMgbBNMTDUI98Nx9SN1Y2ReWyRtr11eVCiIF9Smks=; b=s4OpvLj2jBcTTz
	VC6bhd2Pk9Rddv/wQDGLwfguPbTzohsleNyTAz6e02944rrli3Y+KU6wLYwxIW+9CxhhsVHDSiNhR
	lhzCmnWyFDROYU3S3C2pJBOZb9INE/gC6EvMED9WgORGK4nVyjOKsgiEjqNlraQw3gteC4coU4tc8
	NO13v0vLc7ItPk5yM5C0fhGTqpVIhUciOcnAIRF6cnZRXrSw5jc6/bK8ppMt1HK7Uwd0EHLC3vbRP
	DT+fy/WBfj2OW32FwUbat8EPQce/oYdPuJ2VH0JifKRLnulu0Ro+hEZ8IqUh2i+QmHFrrs1TmCc4c
	B/HGUFqWgJaUruvxwFnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI4uw-00000000ytT-3l6A;
	Thu, 22 May 2025 12:20:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI4sV-00000000ya9-1Nvj
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 12:18:31 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54M7cCCj016898
	for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 12:18:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0lCT7OHY4qkgiQFGYQKA7CZb
	Akqwj5/9Vf4jfYRxp2w=; b=Aa9YyTqcmPha0q2DghHt2xtcU5SYpTQI+wn9JyNC
	TPmR/lWZKU1zGBkKvQl+rzqe05qy4HRdAZV+B3kZWUl4/udXyyDvY6/aJQyp5E9c
	PnvR/TqDIzEEHZj1YqRBOaYT8HaTg/C8PrY7Y9Cw179AUBE8TUvX63Onr2SovWxr
	6IEi+hF8cnpPoswawlLp1ruya8hMT4vsx/Rh8Ai/+QZVJWnDpk6FtY79pkseUoPc
	IPCL9eZHPBgHBaff/H9WiXFv/HAegnUtXq8jI2RrCFcxiKs360OkUIBxn+JMsXcj
	zVWU1JPyA2bUkkZpw68CKKht2EwzNIimJnvyVObqibnkxg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9x8wg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 12:18:25 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-30e7f19c8cfso8637687a91.2
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 05:18:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747916303; x=1748521103;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0lCT7OHY4qkgiQFGYQKA7CZbAkqwj5/9Vf4jfYRxp2w=;
        b=STZUhGAp01b3YZ/oPfFy0j+PZ+jlhfaUT3I3kLVfxbYqbdkMl5vxGIueaPhS/wQmx7
         r3WCXQzl8u5303S5KDXzCV/pP9oe+KS35khumUSkNsdnyrIGZd7ATSFGd2bFgn2ydJg5
         +qBoRhL8xeBpatuVWZkhHENJfUEd8duj7fCb9lDcawl0Sl66VwDSg7fKJtplD9N6iEwN
         LhiUdNg8dajFuGLL7HVBOcBJFPzanfJCQnJVf//qxwyE9JD8aGLBb7TnKUdhoeCyWB/I
         lf3Fls4LZ5xKy7a8tJw0RTkefvEE+qi/pCVrCdCnWTmiTIiASDG8FfntOIs5Vf89vUsw
         BsuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzJti0PL4I5DsKY0bEtrvNQab9Es0EcXp4o5WXeQ9L92cNKe6o4htucWHkLIycv2EiKJio2PQfLTI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmWoRkwc+N884FFb451dP5vxExUdu/1Udfn4lGlzMWyhP7ZPvj
	K5Nz7iWapOHiKhUDRxLYtKFE9jNsYl+vDLEXbpPm2rSV75biiC/fXYcXDGKtnQzZ7pioGt/dGnM
	Excl6HvycQGaVtLi2p97KAsDL8wfx0100tSEoT6L2+o7FrLp+D8kLXH0crEpoJcvUzMFhK1RoOK
	zh+U4Utf0A3jCk562Ny/H1UY34CXaQ5asGwuvtH9TXJV5C810Grgs=
X-Gm-Gg: ASbGncu3yjkb4qX9OGoVEWQeOkDZwms16fxm4DSSf3pFIojQmi+VeUACD5H0kSS8lrj
	2jDh38ooZuUaGwj3Jo7V2d2741uKqxcVmmTWNYHSHKY1vEtZcg/oFGwcaGAkuyZSMUR1jeK5Ruw
	vwTolgORM=
X-Received: by 2002:a17:902:cecf:b0:231:b407:db41 with SMTP id d9443c01a7336-231d43bf736mr320068205ad.27.1747916302752;
        Thu, 22 May 2025 05:18:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVCBtSXCGrxGhOjYPLWJ1Pge+L+iUp5ZhWbLEtsrjwBVC47icKDyLQuongy1ue5r0NbqFAbpPouL6VSBeNM0U=
X-Received: by 2002:a17:902:e885:b0:22d:b2c9:7fd7 with SMTP id
 d9443c01a7336-231d43bda66mr369410555ad.21.1747916291391; Thu, 22 May 2025
 05:18:11 -0700 (PDT)
MIME-Version: 1.0
References: <20250421-sm8750_usb_master-v5-0-25c79ed01d02@oss.qualcomm.com>
 <20250421-sm8750_usb_master-v5-6-25c79ed01d02@oss.qualcomm.com>
 <aAswZg9s41s/m/se@linaro.org> <f7de2bbc-4925-430c-b263-226a633e4bfb@kernel.org>
In-Reply-To: <f7de2bbc-4925-430c-b263-226a633e4bfb@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 22 May 2025 15:18:00 +0300
X-Gm-Features: AX0GCFsGEs3QorxIOmjt3hRGNqdEtBYgdaIA34L_R3JHBLbT-M4cKvdAgLWPMNM
Message-ID: <CAO9ioeXzzSBy+wYFATeckKZ2641GaTA1dB_1HOb238DdB7ACoQ@mail.gmail.com>
Subject: Re: [PATCH v5 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
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
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=682f1611 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=aPcUfg5sKJd9qEyIwccA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: fpg4hKQB9andHSUEdiFP-uwIJDtOsIPy
X-Proofpoint-GUID: fpg4hKQB9andHSUEdiFP-uwIJDtOsIPy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDEyNCBTYWx0ZWRfX0p052h50OIoy
 QS0eWHzqMqknXqyk6edQWQ602OynXJX4pelwLOvr+oXRLHwYS9nWHhkhXbIqtUVdNtJwGRcnIj9
 WtE2RbRr81uLYbOpSMbJFgeMsfurskv12VqBQddi8Z8rW5iPNLGbFwtq5YGJ1f2iQIFzUXp27xU
 EfD0kxlecXfBDYuvd7uX7QjDe7jR/UCmC3Mg9G0BC2X5ZD2Dz7x6PEmh00QoNd4rTVUdpj9akMd
 Moq5nyR87GzEhf1SuXCqr1k+H46TImsyW/ouvuDHiuBvobBcHdOO5JkkviUN/Mf5COEbMpwt7wb
 1K0DfiwLpG5tveT9HE0+aAjkoeEYv7xa+lqQ4LRMMoScp002D3hehrQXN8ULghT8xaU3BVJDFcm
 KJTDf19DpWhhC7J6+ndYJKckEDtMQYWMqhqOL+BS/JGutrBuYAmLZxLH1g+oV9wk8aU8IOkc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=623 bulkscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_051827_480651_013B3314 
X-CRM114-Status: GOOD (  11.42  )
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

On Thu, 22 May 2025 at 14:05, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 25/04/2025 08:49, Abel Vesa wrote:
> > On 25-04-21 15:00:13, Melody Olvera wrote:
> >> From: Wesley Cheng <quic_wcheng@quicinc.com>
> >>
> >> SM8750 utilizes an eUSB2 PHY from M31.  Add the initialization
> >
> > Nitpick: Drop the double space from the beginning of each phrase.
>
> Sorry, but why? That's a correct grammar.


Being absolutely nitpicky, this depends on the country. In some cases
(US) typography settled on using double space after full-stop. In
other cases it's a normal space.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
