Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BB22CA5FC4
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 01:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JppcapdmLA5rtOBJLnBZN+TIItc89lzYX212BLWxXDQ=; b=0mrvvmWeQ867l2
	6L0io785yGOS2y7aSZo9rZeCGaPC02j5ZSvBPguB3XI+hN1W1Yn+cxeIcDVVVVIny2mXTiR6eXRGn
	wHRwtTpQPqgndQ2v3V/8EBc0IBxkupQUy7NMtwJ5hfPtZ6+X8NMg2QjFUQYW4RXt6lpm68Po0qwoy
	qr1hzWG6MJJinjRjuNtydijI4CQR5WI6kAKweiv8fISvVrw6R2eSH7ARskbYaJRMINIWMhdIDYXE6
	titJUnos2tAdYAe47wGCDRuq/ou5HD/F60N0PAGj+f8P8A6EetaLlslr3q4yNsnqPS5AdUYsnkDpZ
	eR8GhrBvn+ChGR9c84LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC5cv-00000007Zce-29rX;
	Thu, 01 Oct 2026 01:30:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC5ct-00000007ZcC-0TB1
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 01:30:24 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6910k2IX2012667
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 01:30:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eGwclrvkGkFDi/gd8U3LJ8vU
	MTfgL1qtLx/RYSRBDR8=; b=jlohJp8/meS2pus0/0/GbJO4igfnxXNFvB3Z1YIX
	TO+6PiYRgG1i9OjsKz7xE9w0Wge+QTakFSyR8BuA9kKknRr648JMXbF8rBVJ3Kr+
	DQ3f39iOBaPBx1pu/FGvlkDn3BHqmU/GnTCvdOKyfSrn2ew51vOKENDoakS158xX
	LD/Htc8wKX5TI2XS9RtItvyMK73U2DNtIunQja7Wu6JYA5AifxCWNbFIU3Gg2p4I
	ONUQnURYVhtAiF8j8MtKmc+Uztk6Rybqg6LaHZ/opYlrG5lZsiHDUVk/DOdD5aad
	uoM/u4y+6+a6F7HFWxOX8QuXuINGB5KfjgLcJX5FE/iBVw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h0yh83v7q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 01:30:22 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93cb98809caso37914285a.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 18:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790818221; x=1791423021; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=eGwclrvkGkFDi/gd8U3LJ8vUMTfgL1qtLx/RYSRBDR8=;
        b=gC1CPLPwaTSBnnzX8h67S52a+5lol+Jj4Nx4GBp4qE/jse/7AJo2rjUXJaR5fyarbs
         5PSbAznLoSrSz2qKj+FPnCpoIuVNeFqNvJB3W3fl0WUEWmCTie/lWMTSD/X6ad04b7Bs
         AHkVPyEPRHAaWV2+xklIlS1V6BEpsSOFZ/qA6MVv5uEs58klPHToYCpw1Or1+G/FKuA5
         GZWQThkGIWJUMWIQ7pTiQPok0tp0eAPW8KnRp8tWTH6KEZ1rJzQYLLHXtsR4z5F+g+P1
         MaFosugIioUmY5W85anBMiyAIzK7fU4qGbARRWTgkpRVcfN5BONCZxAyginRYMC+CJHC
         G0vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790818221; x=1791423021;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eGwclrvkGkFDi/gd8U3LJ8vUMTfgL1qtLx/RYSRBDR8=;
        b=dGx6jLTcRXztiqk81FzhETcirkoosklsAZBUGD5Anfvh1LI9dygdBMEKAdSV4J7mpg
         8um3WNNB6J1CxdtK6lxwa7XliXUUXeEabV0muS11vy/QQFV3XXAa7JDDqZyWdsIs+JlQ
         1F6wlOhPqWCiiY7lRli3anRURABE5iUKkuzZ0KfZ4Ug29AshH8s7T2KMP+/y85ep4M08
         TOjGo1k322yuvCI+AyUqCtddG88kNtMLw/SU2R4g1eaANtd+B3prd6r3BVBLB7kDQGp5
         qFrWLXAqu9srYGW3+Wnp380NcMjU7F6kxDiiUHoOno6nPqiX0hH2qBiocy+c0dXvxgKR
         Y1oQ==
X-Forwarded-Encrypted: i=1; AKwUvBzgSTQXjOxrtdneUuBcwBc/VytuamBggRF5o/nTbFOs+CNvQglAyF/su8AskfaeyR0oQxp/FapA12w=@lists.infradead.org
X-Gm-Message-State: AFuF++kh8P4PwqEuzaGyL85EssKS5mu04Qy9dqxJveOzvhV+F75ejXg5
	gf25czWQ3qULv9fIiUXYSlA/PcoMoKtEq6HwDaaiHfzLuGLVg148+yoWmexiSUVY/OpjtanSxfz
	QwVcc6bx8z0jBt0L/iPdnh6FIc/3s0WNRLuk5omSEWkwzLaQmwb8yt7lP3KXRbvZdDB0S
X-Gm-Gg: AYBFou2jmhF+sYlLN0WFn3cWzq1gxD7nx3aUXrTe5xx8VHik7gElUKiUGB23p9F996W
	SMdWgMBUVHlNPluh9uqb9IkpAtWvrM6M3BOfNLdgsaCtiMsI/GRNuE6OyDZGE24rWNOGmjDzPAA
	d1wD9bB/ArGdQib+HXtQbvNADT0IGqZJnEiyELqiS5dKjTaGCQyTt3LCENT/BkQaCMh8S1XsOFP
	UHqXKxJl/60FupXSAIilKIPtPAxbpqrueJ2VpZCYOs7e/jeSgb+el8OUlPaEcUzw2Z3cpmpjMR3
	jv40gJ4IWXNMgxKkuQFJz2md32LTEDbvIAuDwF87WCRd4FHR9ateCE8gmHie4NQIwrZL2mGDBaA
	UzUuxIf6JtbtWmt4xgks3rqFB6TdEL1YwEr6CfelgXqnWqfcASfEt3Td8xxnxT0WmOKkShh5lZf
	0FsM+uR2UYsCdp
X-Received: by 2002:a05:620a:440c:b0:939:ab90:8f6a with SMTP id af79cd13be357-93ca9779e92mr539017485a.18.1790818221140;
        Wed, 30 Sep 2026 18:30:21 -0700 (PDT)
X-Received: by 2002:a05:620a:440c:b0:939:ab90:8f6a with SMTP id af79cd13be357-93ca9779e92mr539010885a.18.1790818220566;
        Wed, 30 Sep 2026 18:30:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ba44059a94sm170385e87.6.2026.09.30.18.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 18:30:19 -0700 (PDT)
Date: Thu, 1 Oct 2026 04:30:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 01/17] dt-bindings: phy: qcom,edp-phy: Document Nord eDP
 PHY
Message-ID: <vj37teqcz2gzmwjjn2exvadtby5vugpsloa46laktwiyv6yjlz@px7ludjbiub5>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
 <20260911-nord-drv-dt-v1-1-e25c073cf1b6@oss.qualcomm.com>
 <evvgtf6b46zqpolvybz6xfklakgoyv2llnvawrblgz6np7viza@gtmqflkwwmgk>
 <a5a4abe4-17a4-4ee3-a213-a9e136e31648@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5a4abe4-17a4-4ee3-a213-a9e136e31648@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAwNSBTYWx0ZWRfX9EMCkvS51vHd
 kuC4kCZTMdXSug1RwmxvppZWHlyGV7CZ4QGM+8ruuroTD5ew4IBgXfqsWezG0KeMoKToTD+jnRr
 dL2soiVd2ev6pG/yApOXC+HuTE2S33y9d9D22UrF0Km+TQkvubul+Wu3kHdTBwyJ/ev4z+1v1C7
 tTEfwLlbHb4Mysel2OxG6IR87bW9NIwYaJSvlQy4G3m8I4YULSJir6gYDCsEgHRDLaKkjULXQvV
 +ckCSkR/4Cpmqxg+Vm/m5epVRjIf/FC9cigXGICWea8CRNd0qXm3SOVJ++y+jfcJDpwbYQCag0q
 V2E5NLyEIchqAXpQcrklO1e8sZ0TxZs8i2W7ck6JmMDpxlMbRCumG+lt5reN5AaGppltnvuZW57
 JaTCk8Ea9mJ7IDWvKbktI/r6QWDt7Fh8EbUNdj85Iw8eLRSYIopMKnfZSKXqc1xoNvjgud1oU1N
 ZCAL14WUMJUf0SWvFaQ==
X-Proofpoint-ORIG-GUID: jnfdTF7hLOsItti0v2fppYagJrvIiVrm
X-Authority-Analysis: v=2.4 cv=NedzRGD4 c=1 sm=1 tr=0 ts=6abdb7ae cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=vJekXL2k7A3vZJSvyLMA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: jnfdTF7hLOsItti0v2fppYagJrvIiVrm
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAwNSBTYWx0ZWRfX6NMP4xfKE4Iy
 3bmRlDweEbP7WYqXckEFu6Nuypa4C2e6Ik/Abt2E+SgeADqOXKZf0OwxO2H71f0oFZ3dyhnHEiC
 fzd12Cj6MNYlR7wOpT5eFXMTJRaVbzE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_01,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 suspectscore=0 adultscore=0 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610010005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_183023_167059_76C48DBF 
X-CRM114-Status: GOOD (  21.37  )
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

On Mon, Sep 21, 2026 at 12:26:54PM +0530, Nabige Aala wrote:
> 
> On 9/14/2026 4:59 AM, Dmitry Baryshkov wrote:
> > On Fri, Sep 11, 2026 at 09:06:32PM +0530, Nabige Aala wrote:
> > > From: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> > > 
> > > Add the compatible for the eDP PHY found on the Qualcomm Nord SoC.
> > > 
> > > Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> > > Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> > > ---
> > >   Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +
> > >   1 file changed, 1 insertion(+)
> > Does it use ref clock?
> 
> Yes, it is using the ref clock.
> 
> [PATCH v2 1/3] arm64: dts: qcom: nord: Add display subsystem nodes - Shawn
> Guo <https://lore.kernel.org/all/20260920091930.2215803-2-shengchao.guo@oss.qualcomm.com/>

Then why did you not add it to the list of the compatibles requiring the
ref clock?

> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> > > index 0bf8bf4f66ac..91d7a5c8e19a 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> > > @@ -19,6 +19,7 @@ properties:
> > >       oneOf:
> > >         - enum:
> > >             - qcom,glymur-dp-phy
> > > +          - qcom,nord-dp-phy
> > >             - qcom,sa8775p-edp-phy
> > >             - qcom,sc7280-edp-phy
> > >             - qcom,sc8180x-edp-phy
> > > 
> > > -- 
> > > 2.34.1
> > > 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
