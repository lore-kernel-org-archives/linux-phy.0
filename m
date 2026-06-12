Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E50ACD8CA8
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 08:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8PtqZSlY8MVM8QAcS2XMpBJIuQPT55lKHQ3s/seDNy8=; b=A7J3CmMnQsZiOa
	EIkISiG4Pp9h4tC/h07v48kcPtHr1u+vlylkYgJ9747/gxahVIHgUIor6yxMO4RG2tmQyXLmAduHm
	qYcoGR3XfGHqSldTZOqiUXFGa6GENeQ5x87vRf+acNZiThLnNELsmm5Fq9Gfq9nz8f28RVL34SoLn
	JQxQgsqPHuXuQE690ZlfmE2Kr9S0SFgT1gDBcLQNjbA06SOQRk2joQ8pA3kTy1SNw3kPe69S3Ux4+
	jASPW120zsgsa9joGpLBUvlM+KdLIiWY14GrKELjPtbJTpm6b0bM/vjKg2khjNIXgApxuEQYOaQLh
	XmDEjlkbzN+aaMV/6M7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwoM-0000000AWzJ-37D0;
	Fri, 12 Jun 2026 08:00:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXwoI-0000000AWyn-2bXo
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 08:00:16 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C3AuTQ2499357
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 08:00:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pCUAy39XvVhYmfJPAmpzk/43
	pUuK99XaLb2hRC0DYLE=; b=kiggQPRoV026e/wndGa3YFp8JUh7kmWlKww9c5oZ
	M14BlwLPrIAelHYIxtc2OAK+CAp/kml35xbmqqxp77PxXiIm8LSPXmw24bwCgc7D
	Ei+D5FbV7zj7aQyUGTwDcnsBLdPkvTBQTTF5wJpADwWSGEPCRu5iyeKkfcaX790M
	hAkZPPYzqMlnOT7eRZzWdMftjYXfCK2cd8m0+bBMsvNawk1ipWARkFegpKm/lWgS
	hlkHCwA1uxahXcNr0IkFaCf6Tll1Hd5EgqYGdCRXBmHt4OUAuZXvgeULZvas7ceF
	kyupmAy/aFuk5wxXsz3j7Ry/28/vQj+a+DCbMlCcyh+oug==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er0x7jqg2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 08:00:13 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51771d41426so13004681cf.2
        for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 01:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781251212; x=1781856012; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pCUAy39XvVhYmfJPAmpzk/43pUuK99XaLb2hRC0DYLE=;
        b=H8hcxwVwWuH/SIfiRqbo/g1UWcG4qghn+VEmKvnGolFM162Nra3VSyJ2uqz8gsYV7t
         bS1hrKOWlB2CPsgGlQe8jl3SrFQUjXF2pkfWgQKR1O5fuC5U+JMgWWnNSaQ1NnyacJbI
         ndHVlsUcs5EW8qDtncH6bREInvtgpfwSlqUB4lwy2BcEFlqFLque9EA8NANvZAV99Ien
         zssfzudkr+mzpQjAzaP6dTwUmXBx6sM+vTspTww2nioO6fEu0StPZJF5Sf/4D271nQ1P
         70g0RU4ivJvOhoUxzuYqBMLIv6ulMpyaPRGTje6FwO29if0ZpA4VnWbrCgFbrOSzPKyF
         CCEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781251212; x=1781856012;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pCUAy39XvVhYmfJPAmpzk/43pUuK99XaLb2hRC0DYLE=;
        b=A2/0ct/R8uAgoHp7n19DptmRv3uCP/PUzY5DqLni6RzK1dwJyxclo045LOQCFVeKZN
         J7z6KaxOxYEynL6otWO8b1Murse9G56uNOWLOwQhH1uDjnXaYtugdHLeHvgJrMvKrL84
         MsOtKfQUWQQA8qGVICHh4WCaTys7KG1tXyUwGf4yFlEyeaFjBLRD4yS13lDyhC2XM3tr
         llxyj/k4Op3P2YkbXlGjcb3oUpu1NX53RMaw+1JmQ9ojR0/2LLTB8fcSflWnIYwnqnvC
         ibiVvNsWsmAoyoT+6kFSIa+JKmQ/Al36GkbqvAsFyF6Zen3ddeDgWJ+D5dWmELaK8pFy
         tQ8Q==
X-Forwarded-Encrypted: i=1; AFNElJ/fBiRfFsa5eyxoOnwRSoQqLJKtQ7YK0qH7ix82Tq87T9/HnUScevWCXcOHto9q3fXoIoZhWmzcQJI=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywk8XIHVeLLyjrzEUZOUYTtkXINWXkXQBvB/3BgVJtTSHsmuaUG
	xayE0A5Kx2FaG1bGYa8rpouVoL5Dv1Um3u9n03e/aE4xntWNK+3zhO8TlbO4sJZWH89ehdgoJ1f
	w8IrV3Dn2w2B7Waen7u6ak20AVTZRMAIx/8PdmAckLpXggDNUjYlVl/fLngaqahsgAPgl
X-Gm-Gg: Acq92OEYhzG4q8+qvb2A9+M7sjGPQu52WZh7zMzopQqv5vwnUoI7T+COma8JZOyUb1q
	JFJx+U938Bwlb0mz1wBrWzvAvJNVGsw9krKqs+TVf2rVHFN8hSJ+fVqZT32VCcQ6D1v8vEcQqJW
	/ZB8pN+MVsKGT+mK3OevclmajB6P0+J+iqRxlr29LF5mQKzCfzGaEsai7QAYRclQDdyYk6GQr/n
	6Z9XqazSNTP0o1A9n+H9TTjVjqkeSjK5FUB46jcSl1fM/lz/24PX6QkfUglxljMe/NpNt1FO0Bn
	XQaegqdxgSUz6vgBc6jXgQE2B+1S54m+2MMDdiWvvcB2+rCl1cuRRViUbf89b3CTUoU0PG4sgbc
	oG2JdQNarwsbLMSTW1imIQXiS4HWAQTWHMCVuHoeykrnfRZM810Nj8o1gFXNQ1OGITPW5erBnqd
	d3IJj/JOep4rJ4itRLb20EZRve9W1QwAXEdFA=
X-Received: by 2002:a05:622a:488d:b0:517:8711:d466 with SMTP id d75a77b69052e-517fe59b87cmr21873761cf.56.1781251212122;
        Fri, 12 Jun 2026 01:00:12 -0700 (PDT)
X-Received: by 2002:a05:622a:488d:b0:517:8711:d466 with SMTP id d75a77b69052e-517fe59b87cmr21872951cf.56.1781251211630;
        Fri, 12 Jun 2026 01:00:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad2e1b3d0bsm322680e87.71.2026.06.12.01.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 01:00:10 -0700 (PDT)
Date: Fri, 12 Jun 2026 11:00:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add
 support for Shikra
Message-ID: <5vfu3h66pelbhzyfqnagxg2j6r5mn7jupx3nmewt2zsggfa6sj@ttqr775cybxa>
References: <29571bdd-23bf-42a7-a9e3-918a28c79700@kernel.org>
 <62161822-2365-4ec7-80f7-8660bdadb177@oss.qualcomm.com>
 <40b5e0f6-bc61-4750-9560-bdcc268f0fe3@kernel.org>
 <d52c5039-9431-44ed-9f3b-bb00d03ae176@oss.qualcomm.com>
 <5baeeeed-7c18-46f7-82a3-5bb299ba05ef@kernel.org>
 <42ba6ac7-306a-419f-96b6-3427c51ef567@oss.qualcomm.com>
 <9ed7c714-07c1-48de-8d27-cbe24356c606@kernel.org>
 <34586ed6-4f78-490f-a916-baf7657cca7a@oss.qualcomm.com>
 <xw7f24rvxhkfntui4jjswyyabb5be4cbkfgh7fico6vlhfvf5b@d4axfyz6gds5>
 <0947e485-4619-43a3-a127-5b887780190b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0947e485-4619-43a3-a127-5b887780190b@oss.qualcomm.com>
X-Proofpoint-GUID: JCcPEfx4PtnkU2ozPF_Ed-ISmCO4jxVo
X-Authority-Analysis: v=2.4 cv=c4abhx9l c=1 sm=1 tr=0 ts=6a2bbc8d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=nvlhaSRbYAXosuLdH6gA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA3MSBTYWx0ZWRfX9vpHzMIkTykl
 2Wr03Y+kbaiN0AQrTM2dzi6UlPpQD6Dfd4+hIEuIj4ASD6Xfx7J0NYH9LeBQklAx5n2DE8YJw8b
 cKvtbBmEok99bOPGK5VG9WuZU7fJBaa8wneB9I4CGmWOK50pRRTv9kusfFcLHUVlBa5L+LkUbic
 XqDFZxSoEP7DJEsCcQqiQSsnPxlYZ9iX9gLWSQNhv0H8NUNjYvufPjosf47ZmyWN1ryRRCsMcqF
 pVR1XtNTE4sbfrlOy02J88xZlwjgmmrA3IWU4g9F3hN8ot+IPfygQEmBpH5tcAL+kO+5z1fuABg
 FLqS7nfvOdqlasS7JxtcpXaY/mhZyrtUOvISHJRh1lkDBnrtmyoBsEOA+K1BDBd6LFYR4njZQve
 mLnOCllOmNT3nNpMgqjJYMKmpHI1K7RfNGimLx9ehO4tYTXJT8VBesM6ORArKAbkFSoGLSdKdAW
 s+aThr1miT1iSxIVcEg==
X-Proofpoint-ORIG-GUID: JCcPEfx4PtnkU2ozPF_Ed-ISmCO4jxVo
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA3MSBTYWx0ZWRfX/pKiJpd4VUhi
 jAGiGLvPyCfN4VsqYCo1VoizykesqiNC+YDSaJTWBKSYx8M2tpRA0supwIypTJUa1DaqREzMyc6
 8aYBsTDboaFxRXl5f8UkwrKJuCtiRCo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_010015_368728_26AAAAFB 
X-CRM114-Status: GOOD (  41.83  )
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

On Wed, Jun 10, 2026 at 03:36:20PM +0200, Konrad Dybcio wrote:
> On 5/17/26 9:16 PM, Dmitry Baryshkov wrote:
> > On Fri, May 15, 2026 at 09:06:21PM +0530, Krishna Kurapati wrote:
> >>
> >>
> >> On 5/14/2026 8:07 PM, Krzysztof Kozlowski wrote:
> >>> On 14/05/2026 08:22, Krishna Kurapati wrote:
> >>>>
> >>>>
> >>>> On 5/14/2026 12:26 AM, Krzysztof Kozlowski wrote:
> >>>>> On 07/05/2026 13:37, Krishna Kurapati wrote:
> >>>>>>
> >>>>>>
> >>>>>> On 5/5/2026 7:30 PM, Krzysztof Kozlowski wrote:
> >>>>>>> On 05/05/2026 15:57, Krishna Kurapati wrote:
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> On 5/5/2026 6:59 PM, Krzysztof Kozlowski wrote:
> >>>>>>>>> On 05/05/2026 15:27, Krishna Kurapati wrote:
> >>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>> On 5/5/2026 4:22 PM, Krzysztof Kozlowski wrote:
> >>>>>>>>>>> On 05/05/2026 12:49, Krzysztof Kozlowski wrote:
> >>>>>>>>>>>> On Mon, May 04, 2026 at 10:36:57PM +0530, Krishna Kurapati wrote:
> >>>>>>>>>>>>> Declare the USB-C QMP PHY present on the Qualcomm Shikra platform.
> >>>>>>>>>>>>>
> >>>>>>>>>>>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> >>>>>>>>>>>>> ---
> >>>>>>>>>>>>>       .../devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml      | 2 ++
> >>>>>>>>>>>>>       1 file changed, 2 insertions(+)
> >>>>>>>>>>>>
> >>>>>>>>>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> >>>>>>>>>>>
> >>>>>>>>>>> ... and then I looked at the driver. So un-reviewed. Devices are clearly
> >>>>>>>>>>> compatible. If not, explain what is not compatible.
> >>>>>>>>>>>
> >>>>>>>>>> Talos uses GCC_USB3_PRIM_PHY_AUX_CLK.
> >>>>>>>>>>
> >>>>>>>>>> In Shikra, we are using GCC_USB3_PRIM_PHY_COM_AUX_CLK. We don't have
> >>>>>>>>>> GCC_USB3_PRIM_PHY_AUX_CLK.
> >>>>>>>>>>
> >>>>>>>>>> Hence, I didn't use a fallback compatible.
> >>>>>>>>>
> >>>>>>>>> This still explains nothing. How different clock makes interface for SW
> >>>>>>>>> incompatible exactly?
> >>>>>>>>>
> >>>>>>>> So I went by the naming. AUX vs COM_AUX.
> >>>>>>>
> >>>>>>> The naming does not matter. If the clock is called
> >>>>>>> "no_one_expects_spanish_inquisition", does that make software
> >>>>>>> incompatible? Why would the name itself matter?
> >>>>>>>
> >>>>>>>>
> >>>>>>>> Can I use a fallback compatible and in DT vote for "COM_AUX" clock with
> >>>>>>>> clock-names mentioning "aux" ?
> >>>>>>>
> >>>>>>> I don't know, I asked what is different in software interface.
> >>>>>>>
> >>>>>>
> >>>>>> Hi Krzysztof,
> >>>>>>
> >>>>>>     I checked with the hw team here and found out two things.
> >>>>>>
> >>>>>>     1. Shikra is a spinoff of Agatti and its sw interface (clocks used and
> >>>>>> regulators used) is the same as agatti.
> >>>>>>
> >>>>>>     2. I thought we could use qcm2290 as a fallback since the phy register
> >>>>>> init sequence is the same for Talos/Shikra/Agatti. The difference
> >>>>>> between Talos and agatti when checked in the driver was the init load
> >>>>>> settings. I checked with the hw team and they suggested using the init
> >>>>>> load settings which talos was using.
> >>>>>>
> >>>>>>     Hence both these compatibles (qcm2290 and qcs615) cannot be used as
> >>>>>> fallback for Shikra.
> >>>>>
> >>>>> Then I do not understand why you are using qcs615_usb3phy_cfg for
> >>>>> Shikra. You say that the initialization is different, but you use
> >>>>> exactly the same initialization. So in a meaning of compatibility
> >>>>> between hardware for Devicetree they are compatible.
> >>>>>
> >>>> Hi Krzysztof,
> >>>>
> >>>>    There are 3 things:
> >>>>
> >>>> 1. Clocks used:
> >>>> -> Talos supports AUX Clock since it supports DP over USB.
> >>>> -> Agatti and Shikra use COM_AUX clock since they dont support DP over USB.
> >>>>
> >>>> 2. Phy register Init sequence - same for all 3 targets
> >>>>
> >>>> 3. Regulator init load:
> >>>> -> Different for both Talos and Agatti
> >>>> -> Recommendation is to use Talos regulator load values.
> >>>>
> >>>> SW interface wise, shikra is comaptible with agatti. If we use agatti as
> >>>> fallback, we would end up using the platform data of Agatti where the
> >>>> regulator init load is not suitable for Shikra. Hence not using Agatti
> >>>> as fallback.
> >>>>
> >>>> Coming to driver changes, I used qcs615_cfg because it has required phy
> >>>> register sequence and regulator init load as needed by shikra.
> >>>
> >>> So is it compatible with QCS615? If not, then something is incomplete or
> >>> confusing. The driver uses the same software interface.
> >>>
> >> Sorry for the confusion. The Talos compatible represents the USB/DP PHY with
> >> aux clock input, while Shikra is a USB-only PHY with com_aux input clock, so
> >> the two PHYs are not compatible with each other.
> > 
> > According to the memory map, there is an (unused) DP registers part
> > right after the QMP USB3 PHY. So, sofware-wise it is compatible to
> > Talos. Having the different clock input means different integration of
> > the block rather than the differences in the hardware block.
> > 
> > So, the block should be compatible to qcom,qcs615-qmp-usb3-dp-phy
> 
> It should still carry its own compatible though, to let the driver
> disallow powering up the DP part

Why? The DP part is there, in the PHY, pretty much like it's present on
most of USBC platforms. I assume it can be powered on.  There is no
point in it though as there is no DP controller (nor DP pins).

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
