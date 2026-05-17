Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07CC7CD4F3C
	for <linux-phy@archiver.kernel.org>; Sun, 17 May 2026 19:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFEJkUry9fCwwtuharslnkXtqQXDMOpGqA6/mhOL1wo=; b=csbQWgUpFjWRTr
	ufhY/2aaMdpHjKL/HxJezf0FqhGk2+yZXcSeEXnOPKW6vZ9GjaUFJqgUX6r2xbM8VxIXTKQLjLIQu
	MgKvhXYJtCXEGg/m4Up9iih/f8Nz0seSpvnXQupw5nMOGfbQpRIOe+hsIohmxwDblhWUBBksuQcKk
	99VkTXOc8Fsdfh0gbI6JtwGcBbXK42GFDp+fWpnF5UJe4MYJ7facMXBbyl8O8ErXsoer9XgGNIKlJ
	fP2RIpDN8B0rAObe7altphz4QVmbzy1Fzh0YZIMunbimvB//ze6GUVOGwvKdEXfloRgFQl96LFiMV
	K/LpwOLr9GUr79cGy+MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOgyM-0000000DJKa-2SE8;
	Sun, 17 May 2026 19:16:22 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOgyK-0000000DJK5-35uB
	for linux-phy@lists.infradead.org;
	Sun, 17 May 2026 19:16:22 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64H9DXgf2077474
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 19:16:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KeNI/0Q/nyMCZAXDQZlUbcd+
	LHYzCauBoa5Eblz37AI=; b=YZIqDeHFpAJuXKL3OBh60odkfDfjg9Jyfa2MqQZr
	u1z/O0nStxEF5gSLuw9Tal5cKvt/KIhqG16k7Wkn54IENJtd1sdYigicHZ2qlStW
	qNOUXBs2BK+11hJKpFr7v9oiJZFqTjkx7WOShepvOW5K159JbqZFiW1Kk9XImvGU
	y5Zpm6KxnTBBdAsJN7YyqKyCdAYv0CDkOVRxMBf0Xnd9d3fuXgZ+EVbIyUPzy7aT
	67SZFR8QomevJ59Zgbb1Eqh2tUNJFY9zGN10HkspMB2l1qvDfSUsCq88hIInk/YD
	RyihQGuY60oosEQY1aixBTmDTKshWf0TAyc9RqviQE8SnA==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e6hv7ubj7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 19:16:19 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-95d601ba030so610378241.3
        for <linux-phy@lists.infradead.org>; Sun, 17 May 2026 12:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779045379; x=1779650179; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KeNI/0Q/nyMCZAXDQZlUbcd+LHYzCauBoa5Eblz37AI=;
        b=h0T4gu91esyxn/YQAmwkFgozClegdedggQMcmTlafjEbyS8++6zV1xTg1Guz2po45a
         Z83cN3ODWrHb/rt7+9GFmldgfcPftgRwMXeCZxR6A2EwceJ7L3C5FLCvlDL+e8N/0KQe
         yCSJzylZl8g8JMwmvSZu1s5aitVydj4PlsW6bf8SmhFwJC47hWsLkoR1UiMHNSogvPLn
         cODZwRnl2K79eR3X8NWLvW11+QycMAPOvBIr74o7vC0xWmuElAw1Tp82ec0AOYPPzk26
         vU9D8yMlNYLofg3sPCJPhnQ+Lb1V3uJ0TTDO/aimico9cFmbHTpDDDaJi0ncbQi1MizV
         B7Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779045379; x=1779650179;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KeNI/0Q/nyMCZAXDQZlUbcd+LHYzCauBoa5Eblz37AI=;
        b=Ow+5tRtIJaHpTuuWj7rcnvWVy/Ag/MQys+3LmjbHjFfbUZSvIyDoGkHNOoJcI6anfu
         8M3mH6FH6KmqCKgUkkenMr8ICIs1QldYLLl13uO7+p2Fenpf2JHeQUdGgivRCw+rDAma
         NIblaIhpthfyFd4oPd3TXDOWlj64VxZbeh1Bpx8gZQGaB0spMg1CgJYyjHBKXJvzriZH
         5ZjS+e1ZcbWy8fB+jDhFG2yq7CfD74NW6ePwm2YQKZoVgVua71vO0I+1uIslcn/OOh4p
         m128kzIxx7NjAZvNPqojmTK4A9QX+IM/rSfWZWFG8PZooX5FaIEATwwednn5dfyOzwSS
         OYjw==
X-Forwarded-Encrypted: i=1; AFNElJ9LUWdMx/QPn2jCPY3oKOCXNrwRl3X1OMYQGkru+z/Fr6T2AWaDPX3Iq5AadPtPDXFRdhrX3kVBqRA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzincDvpvLexT5Ouj7STseyLg8M8df390S9LXCzSYqaZJAjXKxY
	dcg4cQ/t7y3N8+HKzFm0zIepTiUaDjc2EPPgXS6V7uLxNrC3kq8U/i9y8DErKJYa8xIb9ds/WMp
	Ps2WJOd99zjhp+SD3Li6e92fMidvT57xCS5c/sSZuPygrjKH4j0b7lXfoWC9kJeNVwdDV
X-Gm-Gg: Acq92OH55mfZgExL+BH0WhLvBtlzbAZN6gjWbqlGYSop3umX5H0C8mcrcSLk9Lq7VZf
	AHYZ7TpS8oXrFNxoEFv0ecVmWAcHGaKf6atoCdLuUDh0/3uV1+ntMqWU2wVg5cFfwV4ffghnJcf
	RahecRdKVThSddfc+P7T25yHYZKKiXR4TPgEwaknhBHO63EVQfM2ZmDi+qfj1hJWodJ8iOBXu2K
	4v1x0u3RuejXzLThN2Tj7OVbjpLawRQxZ5pUozh0/OXKptiDCMfi4/pEBzZXV3StvpD79gQXL6D
	C6Y7i0q4lYJCNLFV6sUa5Bn9oN0JOH9em4on/A/u3k8XW8Oz0Q4ep8a356A27J7fze0aUwiFWhe
	YeQaUNFzfMlh/u/D81PEDwmnzHgug88uGlA+WvlgWbtwa66fbdi/ZktQwf1Fm3GmrXDWa2nKe3/
	d2xr4k/A45nduUyR63FbmMADSwipcqcCREdf/mXBLUW/ePLQ==
X-Received: by 2002:a05:6122:3a14:b0:56f:2609:cd95 with SMTP id 71dfb90a1353d-5760c01267fmr4184971e0c.9.1779045378667;
        Sun, 17 May 2026 12:16:18 -0700 (PDT)
X-Received: by 2002:a05:6122:3a14:b0:56f:2609:cd95 with SMTP id 71dfb90a1353d-5760c01267fmr4184948e0c.9.1779045378156;
        Sun, 17 May 2026 12:16:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a9164bc171sm2864994e87.40.2026.05.17.12.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 May 2026 12:16:15 -0700 (PDT)
Date: Sun, 17 May 2026 22:16:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add
 support for Shikra
Message-ID: <xw7f24rvxhkfntui4jjswyyabb5be4cbkfgh7fico6vlhfvf5b@d4axfyz6gds5>
References: <8cd564af-9646-40c5-a8ef-c7197fb3cfe9@kernel.org>
 <95b567cc-b83c-4154-9520-e624555f1882@oss.qualcomm.com>
 <29571bdd-23bf-42a7-a9e3-918a28c79700@kernel.org>
 <62161822-2365-4ec7-80f7-8660bdadb177@oss.qualcomm.com>
 <40b5e0f6-bc61-4750-9560-bdcc268f0fe3@kernel.org>
 <d52c5039-9431-44ed-9f3b-bb00d03ae176@oss.qualcomm.com>
 <5baeeeed-7c18-46f7-82a3-5bb299ba05ef@kernel.org>
 <42ba6ac7-306a-419f-96b6-3427c51ef567@oss.qualcomm.com>
 <9ed7c714-07c1-48de-8d27-cbe24356c606@kernel.org>
 <34586ed6-4f78-490f-a916-baf7657cca7a@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <34586ed6-4f78-490f-a916-baf7657cca7a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE3MDIwNiBTYWx0ZWRfX4LiI323QFvfW
 gkFIac5pmimyOUkKOHHP4Hd93ZMTM7FUetY49LKWZbc+SkA9Gim2Ml2X1oJqEZGFFR4ryf4FpMn
 EwyB4sqC+FfZU17eVkdBJhigxTEZJx77vPfhUPJVcLo4WZLTTfQJWPqfpEm5EDNWRUki4UxokO8
 8IMF8vQJwryGdmMQD9djRoGB9jOs0L+502+S3PKer3AOeAdS5lNtg4IPeGHINYjSKroucuOrCO2
 oGxUiGGkT9UWMeixOnAasmocobKykKAD+fg8yMdRODrm/aipgMMe01/LEnp7JBM/IkdSMjYnme4
 uePJ2112JH3qZTjYbps9vY8yZpf3V8xRjF25FEt1zvYv5SxOZIy4ENVrzCpN3+dCKEX/Pf12qi6
 Oxrbs0K0rt28CibgUrcemr4l0QAf8ioLxgpTWVA97SkNMQtPQ8meKgdnLYXTQn6HQxxxV+KhQVX
 taKPT63WZY6NCQAO+GQ==
X-Authority-Analysis: v=2.4 cv=a8oAM0SF c=1 sm=1 tr=0 ts=6a0a1403 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=JfrnYn6hAAAA:8
 a=EUspDBNiAAAA:8 a=X9ApwIYagb19aBUu7BoA:9 a=CjuIK1q_8ugA:10
 a=1WsBpfsz9X-RYQiigVTh:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: AuAZfvDehbyTXC-Qm5sw3Qkc1IqHb-6K
X-Proofpoint-GUID: AuAZfvDehbyTXC-Qm5sw3Qkc1IqHb-6K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-17_05,2026-05-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605170206
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_121620_800249_F71D8AF6 
X-CRM114-Status: GOOD (  44.86  )
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

On Fri, May 15, 2026 at 09:06:21PM +0530, Krishna Kurapati wrote:
> 
> 
> On 5/14/2026 8:07 PM, Krzysztof Kozlowski wrote:
> > On 14/05/2026 08:22, Krishna Kurapati wrote:
> > > 
> > > 
> > > On 5/14/2026 12:26 AM, Krzysztof Kozlowski wrote:
> > > > On 07/05/2026 13:37, Krishna Kurapati wrote:
> > > > > 
> > > > > 
> > > > > On 5/5/2026 7:30 PM, Krzysztof Kozlowski wrote:
> > > > > > On 05/05/2026 15:57, Krishna Kurapati wrote:
> > > > > > > 
> > > > > > > 
> > > > > > > On 5/5/2026 6:59 PM, Krzysztof Kozlowski wrote:
> > > > > > > > On 05/05/2026 15:27, Krishna Kurapati wrote:
> > > > > > > > > 
> > > > > > > > > 
> > > > > > > > > On 5/5/2026 4:22 PM, Krzysztof Kozlowski wrote:
> > > > > > > > > > On 05/05/2026 12:49, Krzysztof Kozlowski wrote:
> > > > > > > > > > > On Mon, May 04, 2026 at 10:36:57PM +0530, Krishna Kurapati wrote:
> > > > > > > > > > > > Declare the USB-C QMP PHY present on the Qualcomm Shikra platform.
> > > > > > > > > > > > 
> > > > > > > > > > > > Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > > > > > > > > > > > ---
> > > > > > > > > > > >       .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml      | 2 ++
> > > > > > > > > > > >       1 file changed, 2 insertions(+)
> > > > > > > > > > > 
> > > > > > > > > > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > > > > > > > > > 
> > > > > > > > > > ... and then I looked at the driver. So un-reviewed. Devices are clearly
> > > > > > > > > > compatible. If not, explain what is not compatible.
> > > > > > > > > > 
> > > > > > > > > Talos uses GCC_USB3_PRIM_PHY_AUX_CLK.
> > > > > > > > > 
> > > > > > > > > In Shikra, we are using GCC_USB3_PRIM_PHY_COM_AUX_CLK. We don't have
> > > > > > > > > GCC_USB3_PRIM_PHY_AUX_CLK.
> > > > > > > > > 
> > > > > > > > > Hence, I didn't use a fallback compatible.
> > > > > > > > 
> > > > > > > > This still explains nothing. How different clock makes interface for SW
> > > > > > > > incompatible exactly?
> > > > > > > > 
> > > > > > > So I went by the naming. AUX vs COM_AUX.
> > > > > > 
> > > > > > The naming does not matter. If the clock is called
> > > > > > "no_one_expects_spanish_inquisition", does that make software
> > > > > > incompatible? Why would the name itself matter?
> > > > > > 
> > > > > > > 
> > > > > > > Can I use a fallback compatible and in DT vote for "COM_AUX" clock with
> > > > > > > clock-names mentioning "aux" ?
> > > > > > 
> > > > > > I don't know, I asked what is different in software interface.
> > > > > > 
> > > > > 
> > > > > Hi Krzysztof,
> > > > > 
> > > > >     I checked with the hw team here and found out two things.
> > > > > 
> > > > >     1. Shikra is a spinoff of Agatti and its sw interface (clocks used and
> > > > > regulators used) is the same as agatti.
> > > > > 
> > > > >     2. I thought we could use qcm2290 as a fallback since the phy register
> > > > > init sequence is the same for Talos/Shikra/Agatti. The difference
> > > > > between Talos and agatti when checked in the driver was the init load
> > > > > settings. I checked with the hw team and they suggested using the init
> > > > > load settings which talos was using.
> > > > > 
> > > > >     Hence both these compatibles (qcm2290 and qcs615) cannot be used as
> > > > > fallback for Shikra.
> > > > 
> > > > Then I do not understand why you are using qcs615_usb3phy_cfg for
> > > > Shikra. You say that the initialization is different, but you use
> > > > exactly the same initialization. So in a meaning of compatibility
> > > > between hardware for Devicetree they are compatible.
> > > > 
> > > Hi Krzysztof,
> > > 
> > >    There are 3 things:
> > > 
> > > 1. Clocks used:
> > > -> Talos supports AUX Clock since it supports DP over USB.
> > > -> Agatti and Shikra use COM_AUX clock since they dont support DP over USB.
> > > 
> > > 2. Phy register Init sequence - same for all 3 targets
> > > 
> > > 3. Regulator init load:
> > > -> Different for both Talos and Agatti
> > > -> Recommendation is to use Talos regulator load values.
> > > 
> > > SW interface wise, shikra is comaptible with agatti. If we use agatti as
> > > fallback, we would end up using the platform data of Agatti where the
> > > regulator init load is not suitable for Shikra. Hence not using Agatti
> > > as fallback.
> > > 
> > > Coming to driver changes, I used qcs615_cfg because it has required phy
> > > register sequence and regulator init load as needed by shikra.
> > 
> > So is it compatible with QCS615? If not, then something is incomplete or
> > confusing. The driver uses the same software interface.
> > 
> Sorry for the confusion. The Talos compatible represents the USB/DP PHY with
> aux clock input, while Shikra is a USB-only PHY with com_aux input clock, so
> the two PHYs are not compatible with each other.

According to the memory map, there is an (unused) DP registers part
right after the QMP USB3 PHY. So, sofware-wise it is compatible to
Talos. Having the different clock input means different integration of
the block rather than the differences in the hardware block.

So, the block should be compatible to qcom,qcs615-qmp-usb3-dp-phy

> 
> In the Linux driver implementation the match data is currently used only to
> affect the init sequence and regulator init load and here Shikra can reuse
> the Talos match data structure.
> 
> Regards,
> Krishna,
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
