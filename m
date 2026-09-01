Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8607FC624CE
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 12:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iulsJ7sW5Y0N5estNDCwwtt5IYxzbSeMOGAmCkZa9T0=; b=UIC7U5dWRExMg4
	tNILIB6lVAnhbhiM+CQrBsxagKFK6Bk86lChhUVl6MMLTUGaOAE9DLZh5/XttFRxEFeeyP8K4iq7e
	IfCJbh5muam3OC1SO9jgQjLYeeW0VzFCbUjmvjSmNw+AR1KtDvg3RXVGDXRWMtTsiA34sY2y8eg6k
	CzbkepBXAbGTotL3NW4IEp/FdLvgGB8RssKeKyOf2Q+YL1qc/T8kUvIzv2gxUd6GbM4bY1DAqucB4
	Wt9g1RG4ijnwSh96Ysm7ivY7vC5y3MVC9HmEdM66P0bqbhqlbGxQ/4sO/7esSXrM2eSoyVblwJAJa
	WM6K9D/BG+Mu7OvgX17A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1NLq-0000000C4M6-10pq;
	Tue, 01 Sep 2026 12:12:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1NLn-0000000C4LU-1Urq
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 12:12:28 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681AJYAK2323249
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 12:12:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KEYrBdhOrwPTRM2hkx/oQbVx
	THX6TdT/1NG+UteDI0c=; b=CzpQunau48fyjiECCIjdPOsAO/0tTqwBftvpVo4a
	qeH9dhrpAzMRxvHUUesCOAuVbAYhrKS4WAqaBjkr5nKI07F30rGWV/npjY+D8tWp
	Ygxb7FY+PFTY6GGxns7QPKqjkc1jfSYMW01kNMYwaCJP8hieJHeOVwPcfrLhid+2
	yHdesmt6zg0O2lZdECU1C/kR8VMdaCxAmDDEkwCC6iyTUcnS8Iw4qfd19DSvmNUa
	JEX8NpvL7XKVEw4URParYBrQqVC+8gvz0qaifI19NhpqLE7IYNkV6WYz9NrJeupE
	IUa13gsk3/TpvY0iULZ/cBQWEbmAcQpRzlBwu6E+9M/ejA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdp7caatw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 12:12:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-934963b2bc0so742762385a.3
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 05:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788264746; x=1788869546; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KEYrBdhOrwPTRM2hkx/oQbVxTHX6TdT/1NG+UteDI0c=;
        b=Tw33JjI/jb0CaNu0xrr9QpeZ1Phuk+BY70X9l1wnJyZICq18lM5fecr7+HJ5DZMjwT
         oxJrXUbbTO3/oCePQq2aoGORcnTkyJqbD9NYRfHlFo+VdWDABwYQQLP2TgPg24FZI5sP
         gCaa30AyafCBYPSsJcxlfEoVfR7UQiz1DtzVTkonjhGM9hBclTaMkUB6YDRj14dD5VvT
         3r8lG698+nJjMWkVJUBXhI8UEdncJT1bVeKCq+ajTLH9pZqfgJXg0WA9TLIhcde47Bzn
         /Il7YmaEW707biwSmqQkD96SAIUmJmRrNDzpMbdW7OBQue/urFBvd9UT24TKnA3DiTQZ
         aMTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788264746; x=1788869546;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KEYrBdhOrwPTRM2hkx/oQbVxTHX6TdT/1NG+UteDI0c=;
        b=qNNylUd+7rijAxdrvkNIKtwr9S2cBxdejzSzeOMDZ8bN+YUij50ZgU8eoLUyt4rHOR
         /JsW6afNJe9rea8O51f9G9An3dDJjvZefbJRZ0arJJbN8oG8dPXvIFozKMr7oMaSGLyQ
         9WD4TLc0FcP2SeQ9Jnz/vJlW0GnjNjSfSPSUl3hKhk8RPeTr2GE6DJZ/frSzPVoD2zXN
         jCj6+Ta7krholdapYcw711XbWEZJ7B58W4LJZ7ub/F5pWBxL1DS4sDcQ7zQYPicdSAIX
         tlOQI6V3zioZ6cxfVb7jUgQqzZUIUFPuM5nwO4W2vu4+NRl7Vb91ZTlOb8zi6fhFugzE
         fMlQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp340dX47Bk9MdyOBkX5Xmwc6D6cJ17XobswMdlDho/ElQU1J8qwqx0zxJqCkYd0Z+2Fr7BOuhAHj4=@lists.infradead.org
X-Gm-Message-State: AFuF++kAEQuN8AYXTeaK2cQXZJzy8ecSGXG1fqdMfhCz8C4zkTRngS2G
	PfFtRWq20UxCx73lXp890kvVN0HsJGpxaeD4ICMxrkBLw4Psu5aO/TAT76hZaWATFkUYYprAW0z
	vhSVoa9zD1exP4nnBLGuiRoNYD4vNkNDCHbuE1vZ9Hi/rgiqnUuad0szIRPsF7ugAn5Ad
X-Gm-Gg: AR+sD11TzDFXum2COehnQMNnio+SyfSkUMcXw04hSIlp3NzOCpYKD6NR4srpsZJkgAo
	k5v87gdmnVk88G8WnfKN+uZ2pB8N9/f7swYzAy6sgmEL3F1jPQN2OV4Bjm/jVlhhMy86bktWWK5
	JZMTe49MjlXQp2wtpdeaRH96ntzo+6Blus4nogo/+1EcF9PBqSBGSS8UKFelzFFxvVMWzb3LrF2
	wb8grAOALFM3Xlv9xU/7WyBzq1j0hLh6y4qUFi8AYshnORpeC72XEjK2zqMzgL5oe4fl7ueUyF/
	NLylwKXz+M5Wny99xQi71K8hY8PuLorjwQJBrgB8zpI+e/vwyKv54w/rJsXxxXkL8qkmmUdgPEH
	8O8JVThh1/RCOjII=
X-Received: by 2002:a05:620a:1984:b0:938:39e7:725 with SMTP id af79cd13be357-9394815a333mr973252985a.32.1788264745648;
        Tue, 01 Sep 2026 05:12:25 -0700 (PDT)
X-Received: by 2002:a05:620a:1984:b0:938:39e7:725 with SMTP id af79cd13be357-9394815a333mr973242085a.32.1788264745018;
        Tue, 01 Sep 2026 05:12:25 -0700 (PDT)
Received: from oss.qualcomm.com ([86.121.170.178])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cdce1e3a9sm63700565e9.15.2026.09.01.05.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 05:12:23 -0700 (PDT)
Date: Tue, 1 Sep 2026 15:12:21 +0300
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH 4/4] phy: qcom: qmp-combo: Add USB3+DP PHY support for
 Nord
Message-ID: <mf4czulidvunrfm6evxvwf4ds22jcdgn7e37xnhhakw2zrl6ug@aenri3zg742i>
References: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
 <20260901095055.42229-5-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260901095055.42229-5-shengchao.guo@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=OcyoyBTY c=1 sm=1 tr=0 ts=6a96c12a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=G5ilVN+faPP2Ze1SHB4iFQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=fNEQ1mXMgSVCMssgLcsA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: qYhH2bQRHYL-i1BoKkPiONco42m93YkC
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDEwOCBTYWx0ZWRfX/kVlD0C5eDsB
 0+l/l9Edeoho/O8lHiwbHJ3H6We1YKFgflmIdY+SBNn2zJn2ECMdhlR8zKyqKUQ3wbvq4pQs5aR
 xIAi5pM+eSOOD+7kGEUTepMKNRFsG7A=
X-Proofpoint-GUID: qYhH2bQRHYL-i1BoKkPiONco42m93YkC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDEwOCBTYWx0ZWRfX9YWtBNqaiACr
 ug43gCE9FttAyfLzdojWHYFtX3unYNoWlY2Xcq35AVTyhLZhT+NpJXNtsF7adXdMXQcFcPgqIGN
 fQ268llg50PyZNSTWx4XZO0SRDUHcQ+G9GZb9/BaH3OdsoC0kaPj3INcj/cm4OEM9ItzEig5E0a
 zzPpCC3QtqQ19Wtx4xAHu1oqnuCW7D+AJBRZK2omBYf0DSa69rUhC6eDKriAdk/2nS2JFHttWHN
 kahP/CUpHUZ8kA36cXEiAC3qbhYtuoVCr94N+5wR09vH6Zk5uWBtzL3IJthYDk9b5SCHo6QpTjB
 C4F+7TFyKqiF5lKJVrET+odJJXshFsEUnyzTJBp1+0RWJMqWbqhb2+cK1x0IVjiv00tn1//rtGh
 bgWpBy5VzlwCOoygqaWD/iErv4+UPqTd/rvz15TMhCmB41URfFhuW/b/bmajzhl4l6GPry+EWcB
 Ohiuh/NFP/8jzOrJmqQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_03,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_051227_406718_0C899320 
X-CRM114-Status: GOOD (  16.12  )
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

On 26-09-01 17:50:55, Shawn Guo wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> 
> Nord SoC provides two USB3+DP combo PHYs. Their initialisation sequences
> are identical to sm8550, but the sub-blocks are not laid out the same way:
> Nord adds a dedicated USB3_PCS_AON region at offset 0x1e00 and leaves
> everything else where sm8550 has it. None of the existing offsets tables
> describe that, so add a v6 table which is the v3 layout plus usb3_pcs_aon.
> 
> Populating usb3_pcs_aon changes where the driver drives the I/O clamp when
> entering and leaving autonomous mode: it now uses the real AON region
> rather than falling back to PCS_MISC, which is what platforms with no AON
> region do.
> 
> The offsets were confirmed against the Nord register map for both PHY
> instances, USB3_DP_PHY_0 at 0x088e1000 and USB3_DP_PHY_1 at 0x088e4000.
> USB3_PCS_AON_CLAMP_ENABLE sits at offset 0x00 of the AON region with a
> single CLAMP_EN_B bit, matching QPHY_V6_PCS_AON_CLAMP_ENABLE and CLAMP_EN.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Assisted-by: LLM
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
