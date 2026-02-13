Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9270EF99C0
	for <linux-phy@archiver.kernel.org>; Fri, 13 Feb 2026 17:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+3QhMXAatcIwmLbr2X2tbVhpQBi0gWAJYF9OVls/5s=; b=w0IEUaXSjGZl6B
	MPAUHCBZj105xJYLDJBuP78RSxrU/IvSc7kVxiYH2LzEP6iLh2GPXbaMbTD/SINlKrthVIJSIAqsb
	xGYnWSe5Q930/91Waor6D7kTXImQ5bJK9aaVQeI4Ckj/C2V2skGzDo7yePNkDpf/eSu4XZ1BJP2yM
	ItN8Z0IQuZuJq8/JUInyRbalMUjsFnMK1rV1uQkuNhI85mK7zyvWi+B1vWPWWa/vZM4FWbJxa3Sbs
	p3Sj0I8nfpQzwZ0YxH7/UY3Fb+EkN1nrR7YjPkA36ieVWb4W5j61aBj5vsriwYD/eq3GMl0HUQsLf
	4eUELquzXAu//svDeevQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqxHJ-00000003lb1-2WMO;
	Fri, 13 Feb 2026 17:48:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqxHH-00000003lae-33XM
	for linux-phy@lists.infradead.org;
	Fri, 13 Feb 2026 17:48:28 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61DHcstX1411089
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 17:48:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ci4/1s4SRwzvVN8iVjVKNvya
	xkNCsYgq6vzc61g86zw=; b=VJruyAwI39bB3rSxsI94dPs1lahghbuXBAcdBZBi
	VIzAmDDY347FkbOUnTFrlxW8CEOssOdltuoDLXteIKAjZsrcywAR5/JhhW6szvhf
	tsOT8QtS9HvLX9dkRxV6zQUE7A1IOeRZsROCq1POkd9ixY/E4Q0Iw1z4v69FEoFB
	toTtT3V+ds03X8Onxd/4k2wq4vYzTr49kUxeKeaZY9acjARC+4WW2l3FurVALzQG
	MihvtdccsDdVW8D6GxxA5QjtfnCQboJchyi55rmAkj1WIv2hb8VX5WQIfMFGLW4a
	aKG901K4MdXlpjKHW11qFlB0xZIrEUMsUT6C1mmpISY8mQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ca8hh00t7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 17:48:27 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70b4b53e4so533299785a.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Feb 2026 09:48:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771004906; x=1771609706; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ci4/1s4SRwzvVN8iVjVKNvyaxkNCsYgq6vzc61g86zw=;
        b=Him6qpXa7FXWoNlzUoWhP4ZvVccKbIsLK8sKDy/oQ5tbWLv2HlprpTTGFR3hHvIpPb
         0TkJJuWm6SkHNUnAFfD/pMZjl5cp/uxnhxHNpoyLK+Ytjhna4ZNemnOPJIsh+fdC08l/
         CSDiRgq5AWAPTZFxBmkCqwrJOuFIsFjrB/OcYXRzuaO5qwL0K2wHQFiqcfSvarbM/i4h
         Tzb4Nvt+7m610dicAx/4rdnn00YjcecVx8e1U4tUxna/8oIh+HlygStdrx6tGLYmI9NK
         Zfw1iecZyin0J+2Y1xqxkNiJ4QlOxSUxqDF37Xo1PlhdajayYgFhI+kel0Jt2lGBmQ7F
         mZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771004906; x=1771609706;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ci4/1s4SRwzvVN8iVjVKNvyaxkNCsYgq6vzc61g86zw=;
        b=a+pRwfwdOjfyoU+Nr9sxiyFHgOXBq4CUatnQ2fRwDA/zKFebBowVmpkx7gSBK9JtKF
         XylPv8sBnSXWOwZ6BUis261UN0+44m7ek802WUb7AMIA8LO4qg3Wpx9xk2LRhV0TRuAj
         wRxudKzWFQ0HJvLXm4xsDZrTg12n6/a/+QuTzGQJwt/XgewNEmh35PqSibfkAKuBQ1cb
         MBw0eE6mDq2oI8yr+q773X3Q3NNhDoqDG6mVf631Pc4DVUGHMEomJ+66LHvY9iYb9OcQ
         Cmol0YpuFzWMPeUH/JQMydk6jwajnWZzo5MFEEyFU1s9os8PeFAYXKWRwHSEZVi4/Ewf
         TRQA==
X-Forwarded-Encrypted: i=1; AJvYcCXQQDs3rbxdl+DSXBV/bDqq+IL4XfhR88QLp6j0J6BMAQGqbwGBAnay5idQ80BMZurLuuI8/jR1PnI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4fXD0qH81HqMFZBvPOl3ul0H6C67lMoshXE11m6zUWa7BcL7f
	hKhhLcF5zgrPq7hswYlBdmxtbOWn30DsiPeyO/eCucaPmkeu0V66FvA7LVxZWx6FFF0r7GsL2wk
	FWEXSDEvDXlVeaIgcJm9EFqbvdUiDoUacatqI0aJPKvNmMfN3YTANhcz5atrMGDHEoTU5
X-Gm-Gg: AZuq6aLKKnTuf2WKMY4vddaq8uxjRsSQ0yXasTplrJW2P8M1w5wyvKiHNikzLEZ2TD+
	pdXEBnfrsgsH98rgun5vvRPZrQf+tqm31FmET6mZyg9vCnLUYgUwmCRJDdwb2wU1JRkWRfIUtky
	aB+Kr5yfQ0gjQCZcdynN2G64REtE8TmCVtXW3dWoxZNn3NB8LoPvS1OLa1WDZ/l8OQcLep4p55v
	GTFFf75URZhcwDdyM/ok1ikBcn3/ofFSjWrHNzOLrcbXGB2oNaSc9jVwEMLu57mmdcgmTFYS7l2
	ItBR3z+zElPxCMqK0VXWad29YBZ+OaniuanJp33PnaFTqBZn8jFNiasb21/a9TuqttlMQLbW7IV
	z6KO/bmlEZgJHw7WHQdmQs8DQj/MHMKMZemS2DTO+1cogx3Ywc4L+WXXIhmU+LOxKt/0q56PKXy
	w00l630ovghLXlXZpdlK6FTnrDwWXZakT9xHA=
X-Received: by 2002:a05:620a:1a9e:b0:8ca:d5cb:683e with SMTP id af79cd13be357-8cb4c025d13mr42185185a.75.1771004906098;
        Fri, 13 Feb 2026 09:48:26 -0800 (PST)
X-Received: by 2002:a05:620a:1a9e:b0:8ca:d5cb:683e with SMTP id af79cd13be357-8cb4c025d13mr42182185a.75.1771004905555;
        Fri, 13 Feb 2026 09:48:25 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5a50c2sm1698630e87.45.2026.02.13.09.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 09:48:24 -0800 (PST)
Date: Fri, 13 Feb 2026 19:48:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add vdda-refgen supplies for
 Glymur
Message-ID: <hi2znbyo5tunwi6du5ifxjci4xmjvfz5wrbikqs7yagpt2rhki@il4g5olkhkvw>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-2-87ca84fd78b3@oss.qualcomm.com>
 <jvitdcolh4naqjdahaajlzdctcmp3sy5odiheeqacps6pcbg5t@zx3jliileazg>
 <aY1KCLDDoQtLJ4F1@hu-qianyu-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aY1KCLDDoQtLJ4F1@hu-qianyu-lv.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bplBxUai c=1 sm=1 tr=0 ts=698f63eb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=aF5tvdYZbIUOgtc3-ygA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: -KgJPRrTxiLaEq4631JWy9sHJb1_-d-D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEzMDEzNyBTYWx0ZWRfX4K1tgzkMtqqW
 Gk8HiRDkH842BHXPzBu6XYgyxOb3jUWC2jQgMug5+6gaQvYAI2dUyK/scoSbC7EWDdqNpdQVg9A
 q2LcZEgriNsP0GCIIy9hLr0bocwGXivF6nymoGRa2rmV35Uy6cRS7HkXZp3SoDVUoUbHEFrkZDJ
 rWqjTfQP9RTs3yHlcr30WiBuZU6YkgsbTZJGazED5fUNhVYeOOZTGn8w5uDGbGGdi/X6bRcsJhf
 P8EI6PvLofVvH+/wKp4sdIg9fxTLZmROuCAlXVkOTgHzEoc/NIDtVvmPoUGwMM2yiRrIUijkyXU
 bHKm3iVQzcvMsTZhgzuxFqzbWzBbmojloYxOm6NEBLa/TARoZbdXCg1T3UfTvA5yaKgvQOCZGqs
 dq8Ry67shGT+1/wf6hwT3lZfiz39jaas5+mlgorrCvpgBlwjiH86xqyfZGDgP5Lb+j4pRm+q/KL
 DVnqPjAufl8gkKZ1zsw==
X-Proofpoint-GUID: -KgJPRrTxiLaEq4631JWy9sHJb1_-d-D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-13_03,2026-02-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602130137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_094827_777431_493A8A0D 
X-CRM114-Status: GOOD (  21.75  )
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

On Wed, Feb 11, 2026 at 07:33:28PM -0800, Qiang Yu wrote:
> On Mon, Feb 09, 2026 at 03:15:24PM +0200, Dmitry Baryshkov wrote:
> > On Sun, Feb 08, 2026 at 08:49:40PM -0800, Qiang Yu wrote:
> > > The refgen providing reference voltage for PCIe QMP PHY on Glymur requires
> > > two power supplies independent from the PHY's core and qref rails. Add
> > > support for vdda-refgen0p9 and vdda-refgen1p2 supplies with a dedicated
> > > glymur_qmp_phy_vreg_l list.
> > > 
> > > Update both Gen5x4 and Gen4x2 configurations to use the new supply list.
> > 
> > I'd ask for the DTSI patch too...
> >
> I will post dtsi patch after we get agreement on how to descibe refgen in
> dt-bindings.

Please include DT patches in future series, they help us understand your
changes.

> 
> - Qiang Yu
> > > 
> > > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 12 ++++++++----
> > >  1 file changed, 8 insertions(+), 4 deletions(-)
> > > 
> > 
> > -- 
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
