Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D622C5DF82
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 08:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aaikcvI4NwF176z2j/X7Gm8Glz+pdzYki5bNPSHo4oA=; b=kDB3BbOZ5Fgl1g
	2q+Va6IBd/iCZ4SIwK151HWrF+7I62mQhVVCj8dbqT0qOjsMg4ZlgMVvoD7f4wa8HOjuXmkjatoP9
	KsidYn21ipvwtkMT4DWGDRdyQeNZvNb8Or0k9BORvtvbf1EVae7Ps+8SVZlepexHunNlTEpVsNaDC
	7INZvzprwd+zvlq7Rn4ZCOxoXVMtsSTW5S+lyBSzAhLl8msGe5Y+iBswoUkX7uF6aDgxbKRB0StVw
	YtOCWwFg/40IMeXJeIhcBckhTcHI91PGdxCniON+oqiY2m9UGiKf65qmTTlI2qHakkaYPbv2QXweE
	Zgq+3bPfvFMINltKKt3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwy5e-0000000B9MX-0CgC;
	Thu, 20 Aug 2026 08:25:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwy5b-0000000B9Lt-1isY
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 08:25:32 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67K7LC0I2753042
	for <linux-phy@lists.infradead.org>; Thu, 20 Aug 2026 08:25:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=223qQlWuY3f+8iK33zdbyvUr
	oKwN1OIa3V2war/hhpk=; b=ZiWaisKmLP4/ZEJAJktEotllGzVr3U9erUWQesZl
	K9FWNzrFitsgOv6Tqy2u/RoBU0vmvgBAAWV0qUVjj4fbb5mNS22zZ6Ltq59ujyvq
	skSRP4q5QmNngi4tpckc/lplVOF/Ars/V3+mmJ5KbPPTZMQU89j2nKl26o4dRT2v
	QnzLii5ZsTZ4SVlcXiCZQursU0D2osCO42AkdU0YAE9GTpnKreQZxOX2zDDhLHiY
	/55OidG8lVxkQgmV17BO7GIFO1TibLDYVKvBh7/qcbwFuP8jS0KL/36JGU9rNw/E
	vA0Okrpm0kegm5P3LzfUtSWFVHUGcNdlRPn4u0EZFoBwHQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g5w4987hk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 20 Aug 2026 08:25:30 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-93494cce712so254439185a.3
        for <linux-phy@lists.infradead.org>; Thu, 20 Aug 2026 01:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787214330; x=1787819130; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=223qQlWuY3f+8iK33zdbyvUroKwN1OIa3V2war/hhpk=;
        b=GuhfZ/0zeqTOf71OuYvyEt6cdae6Erdujv8sPaaSjEfIWWWVFn2kuup+JMffoKHSbq
         YmvvmyXo4L9wDBnI4I9RAUsJUc98x3xuuxwObDg0c4CBbA7XcdR443FckhjE5hLwGySB
         mOmeNOVdNNS3p4YVpke8WaYv0HkFvoeDup6jsmG6HMYYH6eaX2TzznlI/0WeJ66cZF2z
         uzq7QVlLdP1Dz+AkhbuNhoxD2+VmyC2/wVoq3AXJvT9mtd6R74O3gfqq0dMRZB+Qm+D5
         HejRlYAw5zunaOR2qu8hcZXHjVGTt7AScwFT4hQOKJHnpp3J0Gi8BmtnL2VjUJT11SJC
         rb/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787214330; x=1787819130;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=223qQlWuY3f+8iK33zdbyvUroKwN1OIa3V2war/hhpk=;
        b=PRxXFYrHq5FuGKjb5630yC3AoGaghk3bNKaoFNDPyt8h4PTYza8mtt5OialhQGA0Zf
         4B6GjK+qhR7bmux8qWhC0lz11zAERY8Xb/uT2FQ2Fr8mIbnLtGVapjjpOMMwydw/+F6X
         U5+Om7kzIiXcETA6hIGNRUM5pw44vA4KCA58imBoBWGlyyXKDQbHtqkGT8xzQKYwe1lC
         DEDqpm4Gz6BJGPeaw0qbIIl3W+OZH9oi8vMqB6lCC5/HTSf144gsPL1rdEFkx9b8/koM
         ctgn/Tm7yI0s9DCSiOwE/cNrROP9bitHdp7o6FTjiZpdKzGk37yVuvC0e4PA+CbBzJCt
         H9bA==
X-Forwarded-Encrypted: i=1; AHgh+RrxvVsUiGKBlmAhiRSBfYkFTKqPusmZIuYbQZP2WeI2xYHqOMGwrI+GGGQ3+QEf7+d1uBlKU361uc0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+iglz+7VzR6ZD+zoWh5D6AzuVRQb7ZEp0WNpTHJSF1YFZ01kw
	vO6fNhFnk9gO1Djt0LlqlWPKJeHsbjvrq7IfAIIod+Cj5rPWQ6IdcdJOlOc3OGSIRgoYF4SW258
	eFMz98UiPZmpRwpiyV/xYl+8zVlZNzt0B91g0moETiBSZCaXzR369A8aUConVh0HvEeEM
X-Gm-Gg: AR+sD11L+uSfjswQm/fJMc4wSPEnUb0Eq4XWS6c82FO4KgmmykBdB0k1S2im3O5quyO
	ETUfIuZ/ngRxUDKZL1W9OF5jJTleyf0w6e8bpQ2RzrxDJAmB9Ls+DLc6RybCJFi96bCke8XEVzW
	oL8FRv1WxcBPSd/4++ZaXlL4Qx7cK5GbPg8E0Yd9QiTDaGdenEFl04BLqj6X1wvAG1w5llLuWue
	lruqUFOzjXmhiOo5OWA+P26h5KEGaT+4jtNUIWMwy2RqVUU7Xd6iOTnGYr2+Mqf5ZLsNObvWe5h
	K70ES25O6B/Gq90JIQkKdrODNSDXFeJ0eQZIfsS6tQ7zktCl+swXlSxfFHhHhRaztjMCbM61u/o
	rrLuAxEH/k1+zRV4=
X-Received: by 2002:a05:620a:171f:b0:92e:46e5:8f12 with SMTP id af79cd13be357-9371e2ffd67mr946977585a.30.1787214329890;
        Thu, 20 Aug 2026 01:25:29 -0700 (PDT)
X-Received: by 2002:a05:620a:171f:b0:92e:46e5:8f12 with SMTP id af79cd13be357-9371e2ffd67mr946974785a.30.1787214329361;
        Thu, 20 Aug 2026 01:25:29 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.240])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482b14514d5sm11809010f8f.10.2026.08.20.01.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 01:25:28 -0700 (PDT)
Date: Thu, 20 Aug 2026 11:25:26 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
Subject: Re: [PATCH 09/10] ARM: dts: qcom: msm8974: add the HSIC USB
 controller
Message-ID: <oocip6a35iv7wsxtiudapckeklgv34d3cigftdc76jinixxy37@qdd7xsjxvkjf>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-9-e5f93ea76ffa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-msm8974-usb-hsic-v1-9-e5f93ea76ffa@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODIwMDA1OSBTYWx0ZWRfX8chueO+T9lpA
 P5w9j1Cjqnxbjb8Xa68kzeZNpDZDEMiDUFu1CA0oiGXljMtDHR4hM6aRguo0y1wOAldq5f23pW3
 7ubbVHHdaOAWWSrJJyWMjc1J9kRXfIs=
X-Authority-Analysis: v=2.4 cv=YP+vDxGx c=1 sm=1 tr=0 ts=6a86b9fa cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=wUpz7uCjLrEXi01cjX+DLw==:17
 a=kj9zAlcOel0A:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=GX6hXX8UDECmu-q5ZscA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: We1Sctes5tSmKU2IKV4NRBvGYaRN1i_I
X-Proofpoint-GUID: We1Sctes5tSmKU2IKV4NRBvGYaRN1i_I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODIwMDA1OSBTYWx0ZWRfX5i7+WvKoj+2O
 pEfxoGDN/bERgEIohzfQDumwXGRw9ElFHpQrbcTnPecacgHm4tk/mGu750Q7RyUXMf8S/iRs1kU
 s9uxHAq5dOcxw86fTkaunRmxiPMfLNIvtrf+2O6dVJKc0pA810IOaHHxrgN5XWQsU/K/08cJIvx
 1FyyBst95Civhxa2hzuhAI22n8eHY1k4YPoVo79x+3iNg2KQGJCqbZWcOMNGCeonuuJA8AO46Rl
 itnNoCW+26KmwbKKBJV16o3olGXPmBhrFWiVf9L3ySMSlN0KqrjWuLq78pmXOOiWLBcCSf+elfo
 6pWRLNa/BSulH08KqG18OsUvFAonpCQofCb9IqPAhUlDivTnlZhlNEIeRmbe9nxu67pmeAQF7tT
 jfWGGIRw2OuXtOQJhmEno86bOjzV9F+yDiRRCwoGvaXvyvqfEjt7hJmFwH5cCLJw9kooW7e/th9
 dN7F923engPijIj+q7A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-19_06,2026-08-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608200059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_012531_451482_846A6636 
X-CRM114-Status: GOOD (  12.78  )
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

On 26-08-10 18:42:13, Dmitry Baryshkov wrote:
> The MSM8974 HSIC USB host - a third Chipidea controller with a
> dedicated HSIC PHY on the special hsic_strobe/hsic_data pads - is not
> described, leaving boards with HSIC-attached hubs or modems without
> upstream support.
> 
> Add the controller and PHY nodes. The PHY is a ULPI bus driver present
> inside the ulpi subnode.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
