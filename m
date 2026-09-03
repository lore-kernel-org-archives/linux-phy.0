Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B55CC61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 10:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pei2XUYwx+wAxX5+QzSX2LoGeOmBw5k4d82sY2Gw3QE=; b=kY31UiKbH9poYr
	53oUJjY64EzU6ptk+dbXOqlrEpZNt6s4cW+Bxjw/qol43zBJx4pSfnH4n/W9eRJE8QdHBy7ZUlDGk
	92xiE87Nx+M1BTHJE/i1v+3Hn7uY5j0f11JRvv7aVqwQ/kulX51NKeFm6JyokjUSNdP9dbm5oRqTH
	toeP3dVrTKXWR4geNMbSQNdfh2raduCDMQCWC3EetUdrm0UUB5/dMpQlahLUKIpjc+IxMHolW94lK
	xzSbkoqNv90GegzhyC72rp/H3HWfpSdLxAufT/VbT19iPcxKpp9QSDKftREalMJN5S8McYFk+OrNZ
	21ptzdzkEjn0hdJAn39A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x24dI-0000000H5NR-0gP6;
	Thu, 03 Sep 2026 10:25:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x24dF-0000000H5N7-24PL
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 10:25:22 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 683AHK70055426
	for <linux-phy@lists.infradead.org>; Thu, 3 Sep 2026 10:25:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fr5ctLjXEDfEj66Ws0nGVXPs
	zhPrUrJDK2Jw66ZrASw=; b=m94rEqGGOwB0RGzLiPKJPGkleFcP8qvazkiyG5m0
	fhXBEBLYRCXdWiK2VCQcRfk3/16X78TkpCX58tRVeGgPzp02cfHx2AYHqUd55vSr
	Sg9wlO2lV7NR7GTM0tO3PfgoeCdKjWi1bk3zXOn8AXDZQxUH8Nl6Q4/gMp6+nM/p
	NgXwuow0NlfS6du0A+qXVff/MfS7fIpeVoDZxVZPiY2j9SmtWfq0Zne6Hk4cm6Z9
	jzkMPek1S+FH+YS9cvjF0uvNgt4GZVwPo7iVsL2DxqyUdh0Rf1XJSSYyrycY5iCq
	IU3VKZgXT40uM6Mj4QX/EztWJekbBl/lnoJ6MM6wZ3hgcw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4genrdvejx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 10:25:20 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92e4f946461so453649585a.2
        for <linux-phy@lists.infradead.org>; Thu, 03 Sep 2026 03:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788431120; x=1789035920; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=fr5ctLjXEDfEj66Ws0nGVXPszhPrUrJDK2Jw66ZrASw=;
        b=EllUlcTo8bllNCetDlt6hjgcskJ7FKOijpuuVqDWEuDqmdHmX54q3CwP8ObHnezZSR
         +YI6Hgq+Psz0P3ReGWcxS4H4t6bLvrk3EqOXTPZObeBkTAcRMGq3x6cT2qJCCXYVCABd
         UibAP99grTuwjwa1MaepmQ7ZFWTT1WB45RdH5Lfx8wQPsUfRAWwqhWzAY8bCAZRXYCvg
         UqG1YCs13EWyhBHzgHkmRNE9mjapvWb8GHqjN6sw+wT8BqztrEAqPd5Kg8+z5lMHoJZI
         Dq6Pg6OmUF3/K/QawEYvJhWMqIPfx9jqWcz7CeBzTE97KCjhmaK80aNh0zVHNBvVspDP
         czSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788431120; x=1789035920;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fr5ctLjXEDfEj66Ws0nGVXPszhPrUrJDK2Jw66ZrASw=;
        b=CBXBTvrPfBlR0bdpGDrbqf5ckPdI6B9nxls3H9g3BcvwLBzrfkzmIZW6YNIV9h73BV
         0fyg7HQYkx/FyJTIz8LtL5ClLTibQJ7MDYcTk6r5nCttb37WS2V2HwaUSaa+zD1x/DpB
         eQQCxmGepVpZylQP5jF9GiQfwSTaAmfCqmr3qaxWUQszcKbl6yGJtxv4NRDAHPdEKkBn
         dV2HDu4o0NJHuJ+6dVum1Nz2rOBfbdi/GrD286uqJOj3HgzRv0kO19iEjhS6ow6w/cRZ
         K1YMyHovZCqLEFGoyg6Zq8zX49vvsWfjXdiIgCyC6a+iS96l1I4JVDxWxU0GLfIyTrXZ
         07wQ==
X-Forwarded-Encrypted: i=1; AKwUvBxZq2CuHrneNvwmDIxrNou71+aHmA/3w829l7H5w0Il1egf7Wi4ws+c5O5xjo4cEXCzqS9frz46c0s=@lists.infradead.org
X-Gm-Message-State: AFuF++lQj6RINYfwcu7O1Z1lZy188XQSLSbJtcPGDG3p2ABdWyu1Wm/t
	SIN0MuOTgaKhurahoiAgc1mu+DGUNNFf+R/hryPUX+4oV0DJfTTKIucXP654qq+5lgSBXnHfkLz
	nuPkYVam38bmYPq0BWle3drBkZ+5KsabZ/EXScmAs3nNhTilzHH3M/n90UNCJHsgRhQBj
X-Gm-Gg: AYBFou1r+NsHHRyjbhCicLcmXfxon0AFBZR3Y150h4cQhNbDW+4D4k9+bde4IE70mmV
	fL9DEgy9AjKOC2ENTh+ZwgaQm/d19V5zTN0nz7TmbZLMD1/vxMjzzfVjLGSZ0ukG/eTvAyi6g8/
	n/AZXxzMVf6wjUc72mv9XnlZESwAlcwBOEhuG9nTzwOrtTGHaPR29VKrUPinxk7XBI9Em76nTUf
	zY8fu+5gjY8G0IyXVCq8rguunvtYokEXnM4IXMk6GiH6Nb/eGxsDduOR7t0q3jCF3eZpHggYHfl
	w1w+lAT9eBsA+4f478kAX35TQ7DOnUbIsV4Ptrt8vcZt/eOhXUzhmwazETgzro9ZDl6244xiQdj
	MThzwNFBxTgMotQ==
X-Received: by 2002:a05:620a:84ca:b0:938:39e7:725 with SMTP id af79cd13be357-93960f52971mr1372663285a.32.1788431119584;
        Thu, 03 Sep 2026 03:25:19 -0700 (PDT)
X-Received: by 2002:a05:620a:84ca:b0:938:39e7:725 with SMTP id af79cd13be357-93960f52971mr1372657085a.32.1788431118976;
        Thu, 03 Sep 2026 03:25:18 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-484492cf550sm12963975f8f.37.2026.09.03.03.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 03:25:17 -0700 (PDT)
Date: Thu, 3 Sep 2026 13:25:15 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/5] phy: qcom: qmp-usb: Add IPQ9650 USB3 PHY
 configuration
Message-ID: <z5rdzvlvzwteyh63k4mpkwyryug73vj7trjc5lbzutg3qznrzm@6zbklcre3jup>
References: <20260901-phy-v2-0-cc93d2f3b1bf@oss.qualcomm.com>
 <20260901-phy-v2-3-cc93d2f3b1bf@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260901-phy-v2-3-cc93d2f3b1bf@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=H4/rBeYi c=1 sm=1 tr=0 ts=6a994b10 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=q7XEBjOi5DRkXzmV0jSBjQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=7dPHXdr4Qe62-7ilc7QA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 45E76MqeNLBEikE_hmFSgUEDsmY-Qeul
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAzMDA4OSBTYWx0ZWRfX1nCK6aDYTrKw
 ZsLXProlyX/OVwf3fb1zwP4cX2hcco+35s2D3BHoo5vvr/ejvTMBPCH0YIzdC6blNp+rQATb7fv
 stWkGbBAWE8ZP/QRmtcmWAnMNyf6blWVoNa4OVJVfYs8wO9G892E4+J7CdELkAJ9JZhQVn91WHK
 w+EThcFVX+vN4Wz5X3InaWcjaqxRbn45hVah8TWKiImnXTjLKKwbTviOzS49as+cWzBh1GDrUe7
 k+8rvwkuDYtX+OK0VDeiXBiYpXUPZKqIzOkltLvsv0wHPESSY7AuGMap7iaLZrGUcUE5MGjR2aW
 VzlktIu2ck04zqlZlRarNK8o87eZ9YvgDXgPkk1+1zdTMTtkx9q+5CWwGdunrA1B5RtsLw6o/5h
 cRR4IdEof/1QCV3fdW6rVPJwbs8vscPfUSURBxfVX72+tcpr1HGNa9BPJjL8f5ySJd0s/NNa0sE
 T3zJ1k8pFsZgbRe6Xcg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAzMDA4OSBTYWx0ZWRfXzokAr133932K
 xt9fDhIfbILplnimPKLttvZgodbYYlRhD2gKte8NIecUH5axqXG2zXrIcPr4MSplkZiSvg/Gr8q
 0FuyJwsV4cLhDb747E21sQu6oddznlw=
X-Proofpoint-ORIG-GUID: 45E76MqeNLBEikE_hmFSgUEDsmY-Qeul
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-03_03,2026-09-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 spamscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609030089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_032521_668766_2B946CB4 
X-CRM114-Status: GOOD (  11.90  )
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

On 26-09-01 11:34:21, Varadarajan Narayanan wrote:
> Add the USB3 QMP PHY configuration for IPQ9650, including the SoC-specific
> init tables and compatible data.
> 
> IPQ9650 uses settings that do not match any existing supported SoC, so add
> a dedicated configuration to allow the driver to support it.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
